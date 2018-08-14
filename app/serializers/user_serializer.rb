class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :created_at, :updated_at
end
