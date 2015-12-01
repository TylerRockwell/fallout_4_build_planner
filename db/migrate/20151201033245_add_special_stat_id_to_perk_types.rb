class AddSpecialStatIdToPerkTypes < ActiveRecord::Migration
  def change
    add_column :perk_types, :special_stat_id, :integer
  end
end
