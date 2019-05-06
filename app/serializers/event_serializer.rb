class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :date
  has_many :user_events
  has_many :users, through: :user_events
end
