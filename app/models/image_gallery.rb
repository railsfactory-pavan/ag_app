class ImageGallery < ApplicationRecord
  belongs_to :vehicles, optional: true
end
