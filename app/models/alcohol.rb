class Alcohol < ApplicationRecord
    has_many :cocktails
    validates :name, presence: true 
    # validates_numericality_of :preference, :less_than_or_equal_to => 10
end
