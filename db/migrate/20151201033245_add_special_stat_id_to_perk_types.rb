class AddSpecialStatIdToPerkTypes < ActiveRecord::Migration
  def change
    add_column :perk_types, :special_stat_type_id, :integer
  end
end
