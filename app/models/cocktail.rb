class Cocktail < ApplicationRecord
    belongs_to :alcohol 
    validates :name, :recipe, :ingredients, :rating, presence: true 
end 
