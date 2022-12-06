class Post < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true

  has_many :bookmarks, dependent: :destroy
  validates :kind, inclusion: { in: ["neighborhood", "building"] }
  KINDS = ["neighborhood", "building"]
  CATEGORY = [
    "Lost Item", "Lost Pet", "Giveaway", "Moving", "Announcement", "Furniture Assembly",
    "Appliance Repair", "Housesitting",
    "Language Exchange", "Recommendation", "Workshop"
  ]
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def building?
    kind == "building"
  end

  def neighborhood?
    kind == "neighborhood"
  end
end
