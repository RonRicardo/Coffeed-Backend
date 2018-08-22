class PlanSerializer < ActiveModel::Serializer
  attributes :id, :place, :date
  has_one :user
  has_one :friend
end
