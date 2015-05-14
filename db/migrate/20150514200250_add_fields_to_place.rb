class AddFieldsToPlace < ActiveRecord::Migration
  def change
    add_column :places, :description, :text
    add_column :places, :category, :string
    add_column :places, :address, :string
    add_column :places, :postcode, :string
    add_column :places, :tube, :string
    add_column :places, :cost, :string
    add_column :places, :monday, :string
    add_column :places, :tuesday, :string
    add_column :places, :wednesday, :string
    add_column :places, :thursday, :string
    add_column :places, :friday, :string
    add_column :places, :saturday, :string
    add_column :places, :sunday, :string
  end
end
