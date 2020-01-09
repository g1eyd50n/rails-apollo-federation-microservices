class AccountSchema < GraphQL::Schema
  include ApolloFederation::Schema

  # mutation(Types::MutationType)
  query(Types::QueryType)
end
