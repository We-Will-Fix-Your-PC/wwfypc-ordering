from graphene_django import DjangoObjectType, DjangoConnectionField
from graphql_relay.node.node import from_global_id
from graphene_django.filter import DjangoFilterConnectionField
from . import models
from django.conf import settings
import django_filters
import graphene
import inflect

p = inflect.engine()


class OriginalFormat(DjangoObjectType):
    group_name = graphene.String()
    price = graphene.Field(graphene.Decimal, count=graphene.Int(required=True))

    class Meta:
        model = models.OriginalFormat
        filter_fields = []
        interfaces = (graphene.relay.Node,)

    def resolve_image(self, *args):
        return self.image.url if self.image else None

    def resolve_group_name(self, *args):
        return p.plural(self.singular_name)


class OriginalFormatTierExtra(DjangoObjectType):
    class Meta:
        model = models.OriginalFormatExtra
        interfaces = (graphene.relay.Node,)

    def resolve_image(self, *args):
        return self.image.url if self.image else None


class Query(graphene.ObjectType):
    original_formats = DjangoFilterConnectionField(OriginalFormat)

