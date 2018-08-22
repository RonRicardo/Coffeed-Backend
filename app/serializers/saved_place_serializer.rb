class SavedPlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_one :user
end
