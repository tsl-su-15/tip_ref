class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :avg_tip_percent
      t.integer :avg_tip_flat_fee

      t.timestamps null: false
    end
  end
end
