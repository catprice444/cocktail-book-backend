class AlcoholSerializer < ActiveModel::Serializer
  attributes :id, :name, :website, :preference
  # has_many :cocktails
end
