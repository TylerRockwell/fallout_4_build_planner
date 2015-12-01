class Perk < ActiveRecord::Base
  has_one :perk_type
  belongs_to :build
end
