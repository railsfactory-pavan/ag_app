class ParentCategory < ApplicationRecord
  belongs_to :vehicles, optional: true
end
