class Weekday < ApplicationRecord
  has_many :recipes, through: :decisions
  validates :day, presence: true, uniqueness: true

  def to_label
   "#{day}"
  end
end
