class Cocktail < ApplicationRecord
    belongs_to :alcohol 
    validates :name, :recipe, :ingredients, presence: true 
    validates_numericality_of :rating, :allow_nil => true, :less_than_or_equal_to => 5
end 
