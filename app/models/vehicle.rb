class Vehicle < ApplicationRecord
  has_many :parent_categories
  has_many :sub_categories
  has_many :image_galleries
end
