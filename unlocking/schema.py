from graphene_django import DjangoObjectType, DjangoConnectionField
from graphql_relay.node.node import from_global_id
from graphene_django.filter import DjangoFilterConnectionField
from . import models
from django.conf import settings
import django_filters
import graphene
import graphene_django.forms
import json
import hmac


class Network(DjangoObjectType):
    class Meta:
        model = models.Network
        filter_fields = ['name']
        interfaces = (graphene.relay.Node,)


class NetworkName(DjangoObjectType):
    class Meta:
        model = models.NetworkName
        interfaces = (graphene.relay.Node,)

    def resolve_image(self, *args):
        return self.image.url if self.image else ""


class Brand(DjangoObjectType):
    class Meta:
        model = models.Brand
        filter_fields = ['name']
        interfaces = (graphene.relay.Node,)

    def resolve_image(self, *args):
        return self.image.url if self.image else ""


class Model(DjangoObjectType):
    class Meta:
        model = models.Model
        interfaces = (graphene.relay.Node,)

    def resolve_image(self, *args):
        return self.image.url if self.image else ""


class IDFilter(django_filters.CharFilter):
    field = graphene_django.forms.GlobalIDFormField(required=False)


class PhoneUnlockFilter(django_filters.FilterSet):
    network = IDFilter(method='network_filter')

    class Meta:
        model = models.PhoneUnlock
        fields = ['brand', 'device']

    def network_filter(self, queryset, _, value):
        _, _id = from_global_id(value)
        return queryset.filter(network__networkname=_id)


class PhoneUnlock(DjangoObjectType):
    title = graphene.String(network=graphene.ID(required=True))
    data = graphene.String(imei=graphene.String(required=True))
    sig = graphene.String(imei=graphene.String(required=True), network=graphene.ID(required=True))

    class Meta:
        model = models.PhoneUnlock
        filterset_class = PhoneUnlockFilter
        interfaces = (graphene.relay.Node,)

    def resolve_title(self, info, network):
        _, _id = from_global_id(network)
        network_name = models.NetworkName.objects.get(id=_id)
        return f"Unlock {self.brand.display_name} from {network_name.display_name}"

    def resolve_data(self, info, imei):
        return json.dumps({
            "days": self.time,
            "imei": imei,
            "make": self.brand.name,
            "model": self.device.name if self.device else None,
            "network": self.network.name
        })

    def resolve_sig(self, info, imei, network):
        _, _id = from_global_id(network)
        network_name = models.NetworkName.objects.get(id=_id)
        title = f"Unlock {self.brand.display_name} from {network_name.display_name}"
        data = json.dumps({
            "days": self.time,
            "imei": imei,
            "make": self.brand.name,
            "model": self.device.name if self.device else None,
            "network": self.network.name
        })
        sig_data = f"unlock{json.dumps(data)}{title}1{int(self.price*100)}"
        digest = hmac.new(settings.PAYMENTS_TOKEN.encode(), digestmod='sha512')
        digest.update(sig_data.encode())
        return digest.hexdigest()


class Query(graphene.ObjectType):
    networks = DjangoFilterConnectionField(Network)
    brands = DjangoFilterConnectionField(Brand)
    phone_unlock = DjangoFilterConnectionField(PhoneUnlock)

