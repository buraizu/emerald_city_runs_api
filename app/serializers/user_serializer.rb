class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :runs
  has_many :user_events
  has_many :events, through: :user_events
end
