class RemoveSpecialStatIdFromPerks < ActiveRecord::Migration
  def change
    remove_column :perks, :special_stat_id, :integer
  end
end
