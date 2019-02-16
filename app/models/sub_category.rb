class SubCategory < ApplicationRecord
  belongs_to :vehicles, optional: true
end
