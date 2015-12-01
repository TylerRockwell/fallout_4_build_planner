class RemoveTotalRanksFromPerks < ActiveRecord::Migration
  def change
    remove_column :perks, :total_ranks, :integer
  end
end
