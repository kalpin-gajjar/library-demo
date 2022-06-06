class Book < ApplicationRecord
  has_many_attached :cover_photos
  belongs_to :author

  validates :cover_photos, attached: true, content_type: "image/png", size: { less_than_or_equal_to: 1.megabytes, message: "should be less than 1 MB" }, aspect_ratio: :square
end
