class Perk < ActiveRecord::Base
  belongs_to :perk_type
  belongs_to :build
  validate :current_rank_not_greater_than_total_ranks

  delegate :name,         to: :perk_type
  delegate :description,  to: :perk_type

  private
  def current_rank_not_greater_than_total_ranks
    if current_rank > perk_type.total_ranks
      errors.add(:current_rank, "can't be greater than #{perk_type.total_ranks}")
    end
  end
end
