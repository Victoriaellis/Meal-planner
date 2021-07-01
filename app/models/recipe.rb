class Recipe < ApplicationRecord
  has_many :weekdays, through: :decisions
  has_many :decisions
end
