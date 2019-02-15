class ImageGallery < ApplicationRecord
  belongs_to :vehicle, optional: true
end
