class ReviewSchema < GraphQL::Schema
  include ApolloFederation::Schema

  orphan_types Types::UserType, Types::ReviewType, Types::ProductType
end
