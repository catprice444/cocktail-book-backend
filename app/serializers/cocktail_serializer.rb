class CocktailSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe, :ingredients, :rating
end
