class Alcohol < ApplicationRecord
    has_many :cocktails
    validates :name, :website, presence: true
end
