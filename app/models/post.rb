class Post < ApplicationRecord
  validates :kind, inclusion: {in: ["neighborhood", "building"]}

  def building?
    kind == "building"
  end

  def neighborhood?
    kind == "neighborhood"
  end

end
