class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :reg_url, :home_url, :date
  has_many :user_events
  has_many :users, through: :user_events
end
