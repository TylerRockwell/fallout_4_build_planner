class SpecialStat < ActiveRecord::Base
  has_one :special_stat_type
  belongs_to :build

  validates :level, numericality: {less_than_or_equal_to: 10, greater_than: 0}

  delegate :name,         to: :special_stat_type
  delegate :description,  to: :special_stat_type
end
