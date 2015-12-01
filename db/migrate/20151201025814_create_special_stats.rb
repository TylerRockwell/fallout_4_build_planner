class CreateSpecialStats < ActiveRecord::Migration
  def change
    create_table :special_stats do |t|
      t.integer :build_id
      t.integer :special_stat_type_id
      t.integer :level

      t.timestamps null: false
    end
  end
end
