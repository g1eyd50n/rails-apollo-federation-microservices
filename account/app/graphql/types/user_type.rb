module Types
  class UserType < Types::BaseObject
    key fields: "id"

    field :id, ID, null: false
    field :username, String, null: true

    def self.resolve_reference(object, _context)
      Users.find_by(id: object[:id])
    end
  end
end
