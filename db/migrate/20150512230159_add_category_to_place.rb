class AddCategoryToPlace < ActiveRecord::Migration
  def change
    add_column :places, :category, :string
  end
end
