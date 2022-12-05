class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  validates :content, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end
end
