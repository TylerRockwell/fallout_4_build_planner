class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.integer :build_id
      t.integer :special_stat_id
      t.integer :perk_type_id
      t.integer :total_ranks
      t.integer :current_rank

      t.timestamps null: false
    end
  end
end
