module Types
  class UserType < Types::BaseObject
    key fields: "id"
    extend_type

    field :id, ID, null: false, external: true
    field :reviews, [Types::ReviewType], null: true

    def reviews
      ProductReview.where(user_id: object[:id])
    end
  end
end