class Post < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookmarks
  validates :kind, inclusion: {in: ["neighborhood", "building"]}
  validates :content, presence: true
  KINDS = ["neighborhood", "building"]
  CATEGORY = [
    "Lost Item", "Lost Pet", "Giveaway", "Moving", "Help Needed", "Furniture Assembly",
    "Appliance Repair", "Childcare", "Announcement", "Translation", "Reccomendation"
  ]


  def building?
    kind == "building"
  end

  def neighborhood?
    kind == "neighborhood"
  end
end
