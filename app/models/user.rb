class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  geocoded_by :address
  # validates :photo, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :bookmarks
  has_many :posts
  has_many :user_conversations
  has_many :conversations, through: :user_conversations
  has_one_attached :photo
end
