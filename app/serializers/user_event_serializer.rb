class UserEventSerializer < ActiveModel::Serializer
  attributes :id, :goal, :result, :title, :url, :date
  belongs_to :user
  belongs_to :event
end
