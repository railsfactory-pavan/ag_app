class ImageGallery < ApplicationRecord
  belongs_to :vehicles, optional: true

  # has_one_attached :image
  has_many_attached :image
end
