module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :me, Types::UserType, null: false,
      description: "This is the current user"
    def me
      User.first
    end

    field :giphies, String, null: false,
      description: "A list of giphies"
    def giphies
      Giphy.all
    end
  end
end
