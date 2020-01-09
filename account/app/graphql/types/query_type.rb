module Types
  class QueryType < Types::BaseObject
    field :me, Types::UserType, null: false do
      argument :id, Int, required: true
    end

    def me(id:)
      User.find_by(id: id)
    end
  end
end
