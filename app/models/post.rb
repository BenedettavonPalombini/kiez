class Post < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  validates :kind, inclusion: {in: ["neighborhood", "building"]}
  KINDS = ["neighborhood", "building"]

  def building?
    kind == "building"
  end

  def neighborhood?
    kind == "neighborhood"
  end
end
