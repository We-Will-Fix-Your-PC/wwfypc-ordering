import graphene
import unlocking.schema


class Query(unlocking.schema.Query, graphene.ObjectType):
    pass


schema = graphene.Schema(query=Query)
