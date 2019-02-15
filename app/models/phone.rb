class Phone < ApplicationRecord
  belongs_to :contacts, optional: true
end
