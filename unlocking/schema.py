from graphene_django import DjangoObjectType, DjangoConnectionField
from graphene_django.filter import DjangoFilterConnectionField
from . import models
import graphene


class Network(DjangoObjectType):
    class Meta:
        model = models.Network
        filter_fields = ['name']
        interfaces = (graphene.relay.Node,)

    @classmethod
    def get_node(cls, info, id):
        return models.Network.objects.get(id=id)


class NetworkAlternativeName(DjangoObjectType):
    class Meta:
        model = models.NetworkAlternativeName
        interfaces = (graphene.relay.Node,)


class Brand(DjangoObjectType):
    class Meta:
        model = models.Brand
        filter_fields = ['name']
        interfaces = (graphene.relay.Node,)


class Model(DjangoObjectType):
    class Meta:
        model = models.Model
        interfaces = (graphene.relay.Node,)


class PhoneUnlock(DjangoObjectType):
    class Meta:
        model = models.PhoneUnlock
        filter_fields = ['brand', 'network', 'device']
        interfaces = (graphene.relay.Node,)


class Query(graphene.ObjectType):
    networks = DjangoFilterConnectionField(Network)
    brands = DjangoFilterConnectionField(Brand)
    phone_unlock = DjangoFilterConnectionField(PhoneUnlock)
    node = graphene.relay.Node.Field()

