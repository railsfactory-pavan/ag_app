class ParentCategory < ApplicationRecord
  belongs_to :vehicle, optional: true
end
