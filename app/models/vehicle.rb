class Vehicle < ApplicationRecord
  has_many :parent_categories
  has_many :sub_categories
  has_many :image_galleries

  accepts_nested_attributes_for :parent_categories
  accepts_nested_attributes_for :sub_categories
  accepts_nested_attributes_for :image_galleries
end
