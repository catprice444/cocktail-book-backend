class CocktailSerializer < ActiveModel::Serializer
  attributes :id, :name, :recipe, :ingredients, :rating, :alcohol_id
  
end
