class Alcohol < ApplicationRecord
    has_many :cocktails
    validates :name, presence: true 
    validates :preference, :less_than_or_equal_to => 10
end
