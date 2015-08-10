class AddUnitNameToServices < ActiveRecord::Migration
  def change
    add_column :services, :unit_name, :string, :default => ""
  end
end
