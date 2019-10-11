module Types
  class GiphyType < Types::BaseObject
    field :giphies, String, null: false,
      description: "This is a list of giphies"
    def giphies
      Giphy.all
    end
  end
end
