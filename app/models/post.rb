class Post < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  # Create logic that if 'created_at' is > 1 week for kind==building, then hide
  # scope :building, -> { where(kind==building) }
  # scope :valid_building, -> { building.where('created_at > ?', 7.days.ago )}
  # scope :valid_two, -> { where('created_at > ?', 2.days.ago )}
  # Create logic that if 'created_at' is > 2 week ago for kind==hood, then hide
  # scope :hood, -> { where(kind==neighborhood) }
  # scope :valid_hood, -> { where('created_at > ?', 7.days.ago )}
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true

  has_many :bookmarks, dependent: :destroy
  validates :kind, inclusion: { in: ["neighborhood", "building"] }
  KINDS = ["neighborhood", "building"]
  CATEGORY = [
    "Lost Item", "Lost Pet", "Giveaway", "Moving", "Help Needed", "Furniture Assembly",
    "Appliance Repair", "Childcare", "Announcement", "Translation", "Reccomendation"
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
