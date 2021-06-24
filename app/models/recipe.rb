class Recipe < ApplicationRecord
  has_many :weekdays, through: :decisions
end
