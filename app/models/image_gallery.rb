class ImageGallery < ApplicationRecord
  belongs_to :vehicles, optional: true

  has_many_attached :image
end
