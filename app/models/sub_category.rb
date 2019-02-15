class SubCategory < ApplicationRecord
  belongs_to :vehicle, optional: true
end
