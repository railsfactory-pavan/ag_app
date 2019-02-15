class Vehicle < ApplicationRecord
  has_and_belongs_to_many :parent_category
  has_and_belongs_to_many :sub_categoryy
  has_and_belongs_to_many :image_gallery
end
