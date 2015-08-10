class AddPerUnitTipToServices < ActiveRecord::Migration
  def change
    add_column :services, :per_unit_tip, :integer, default: 0
  end
end
