module Types
  class QueryType < Types::BaseObject
    field :find, Types::ProductType, null: false do
      argument :id, Int, required: true
    end

    def find(id:)
      ShopProduct.find_by(id: id)
    end
  end
end
