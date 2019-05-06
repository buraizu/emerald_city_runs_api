class User < ApplicationRecord
  has_secure_password
  has_many :runs
  has_many :user_events
  has_many :events, through: :user_events
  accepts_nested_attributes_for :events, :user_events

  validates :email, uniqueness: true, presence: true
  validates :password_digest, presence: true, length: { minimum: 6 }
end
