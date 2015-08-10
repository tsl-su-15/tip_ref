class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :avg_tip_percent, default: 0
      t.integer :avg_tip_flat_fee, default: 0

      t.timestamps null: false
    end
  end
end
