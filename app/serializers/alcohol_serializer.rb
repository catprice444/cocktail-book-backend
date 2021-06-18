class AlcoholSerializer < ActiveModel::Serializer
  attributes :id, :name, :website
  has_many :cocktails
end
