from graphene_django import DjangoObjectType, DjangoConnectionField
from graphql_relay.node.node import from_global_id
from graphene_django.filter import DjangoFilterConnectionField
from . import models
from django.conf import settings
from django.db.models import F
import decimal
import django_filters
import graphene
import inflect

p = inflect.engine()


class OriginalFormat(DjangoObjectType):
    group_name = graphene.String(count=graphene.Int(required=False))
    price = graphene.Field(graphene.Decimal, count=graphene.Int(required=True))

    class Meta:
        model = models.OriginalFormat
        filter_fields = []
        interfaces = (graphene.relay.Node,)

    def resolve_image(self, *args, **kwargs):
        return self.image.url if self.image else None

    def resolve_price(self, *args, **kwargs):
        units = kwargs["count"]
        tiers = self.originalformattier_set.order_by(F('amount').asc(nulls_last=True))
        total = decimal.Decimal(0)
        for tier in tiers:
            if tier.amount:
                nums = min(units, tier.amount)
            else:
                nums = units
            total += (tier.price_per_item * decimal.Decimal(nums))
            units -= nums
            if units <= 0:
                break
        return total

    def resolve_group_name(self, *args, **kwargs):
        count = kwargs["count"] if "count" in kwargs else 0
        if count > 1 or count == 0:
            return p.plural(self.singular_name)
        else:
            return self.singular_name


class OriginalFormatTierExtra(DjangoObjectType):
    class Meta:
        model = models.OriginalFormatExtra
        interfaces = (graphene.relay.Node,)

    def resolve_image(self, *args, **kwargs):
        return self.image.url if self.image else None


class Query(graphene.ObjectType):
    original_formats = DjangoFilterConnectionField(OriginalFormat)

