class AddTotalRanksToPerkTypes < ActiveRecord::Migration
  def change
    add_column :perk_types, :total_ranks, :integer
  end
end
