module Types
  class ReviewType < Types::BaseObject
    key fields: "id"

    field :id, ID, null: false
    field :body, String, null: true
    field :author, Types::UserType, null: true, provides: { fields: "id" }
    field :product, Types::ProductType, null: true, provides: { fields: "id" }

    def author
      { __typename: Types::UserType, id: object[:authorID] }
    end

    def product
      { __typename: Types::ProductType, id: object[:productID] }
    end
  end
end
