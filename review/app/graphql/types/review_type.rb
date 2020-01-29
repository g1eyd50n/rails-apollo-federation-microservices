module Types
  class ReviewType < Types::BaseObject
    key fields: "id"

    field :id, ID, null: false
    field :body, String, null: true
    field :author, Types::UserType, null: true, provides: { fields: "id" }
    field :product, Types::ProductType, null: true, provides: { fields: "id" }

    def self.resolve_reference(reference, _context)
      ProductReview.find_by(id: reference[:id])
    end

    def author
      { __typename: Types::UserType, id: object[:user_id] }
    end

    def product
      { __typename: Types::ProductType, id: object[:product_id] }
    end
  end
end
