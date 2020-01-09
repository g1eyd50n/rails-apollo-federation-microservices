module Types
  class ProductType < Types::BaseObject
    key fields: "id"
    extend_type

    field :id, ID, null: false, external: true
    field :reviews, [Types::ReviewType], null: true

    def reviews
      ProductReview.where(product_id: object[:id])
    end
  end
end
