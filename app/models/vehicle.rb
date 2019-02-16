class Vehicle < ApplicationRecord
  has_many :parent_categories, :dependent => :destroy
  has_many :sub_categories, :dependent => :destroy
  has_many :image_galleries, :dependent => :destroy

  accepts_nested_attributes_for :parent_categories
  accepts_nested_attributes_for :sub_categories
  accepts_nested_attributes_for :image_galleries

  # has_one_attached :vehicle_image

  # attr_accessor :remove_asset
  # after_save do
  #   Array(remove_asset).each { |id| vehicle_image.find_by_id(id).try(purge) }
  # end
end
