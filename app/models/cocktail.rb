class Cocktail < ApplicationRecord
    belongs_to :alcohol 
    validates :name, :recipe, :ingredients, presence: true 
end
