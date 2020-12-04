import graphene
import unlocking.schema
import video_conversion.schema


class Query(unlocking.schema.Query, video_conversion.schema.Query, graphene.ObjectType):
    node = graphene.relay.Node.Field()


schema = graphene.Schema(query=Query)
