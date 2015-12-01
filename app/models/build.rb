class Build < ActiveRecord::Base
  has_many :special_stats
  has_many :perks
end
