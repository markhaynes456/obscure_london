class AddActiveToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :active, :boolean
  end
end
