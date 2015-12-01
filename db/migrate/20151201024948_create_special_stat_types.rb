class CreateSpecialStatTypes < ActiveRecord::Migration
  def change
    create_table :special_stat_types do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
