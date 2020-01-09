module Types
  class ProductType < Types::BaseObject
    key fields: "id"

    field :id, ID, null: false
    field :name, String, null: true
    field :price, Int, null: true

    def self.resolve_reference(reference, _context)
      ShopProduct.find_by(id: reference[:id])
    end
  end
end
