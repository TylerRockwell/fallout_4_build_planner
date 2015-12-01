class SpecialStat < ActiveRecord::Base
  validates level, numericality: less_than_or_equal_to: 10
  validates level, numericality: greater_than: 0
end
