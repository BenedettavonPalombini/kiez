class Conversation < ApplicationRecord
  has_many :messages
  has_many :user_conversations
  has_many :users, through: :user_conversations

  def other_users(current_user)
    users.where.not(id: current_user.id)
  end

end
