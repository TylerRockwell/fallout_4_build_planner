class AddSpecialLevelToPerkTypes < ActiveRecord::Migration
  def change
    add_column :perk_types, :special_level, :integer
  end
end
