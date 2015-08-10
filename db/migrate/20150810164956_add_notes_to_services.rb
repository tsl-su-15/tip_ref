class AddNotesToServices < ActiveRecord::Migration
  def change
    add_column :services, :notes, :string, default: ''
  end
end
