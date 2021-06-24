class Decision < ApplicationRecord
  belongs_to :recipe
  belongs_to :weekday
end
