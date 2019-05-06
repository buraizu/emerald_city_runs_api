class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :title, uniqueness: { scope: :user_id,
    message: "already selected this event" }
end
