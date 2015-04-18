class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address_line_one
      t.string :address_line_two
      t.string :postcode
      t.string :tube_station
      t.string :price
      t.text :description
      t.string :opening_times_monday
      t.string :opening_times_tuesday
      t.string :opening_times_wednesday
      t.string :opening_times_thursday
      t.string :opening_times_friday
      t.string :opening_times_saturday
      t.string :opening_times_sunday
      t.string :category

      t.timestamps null: false
    end
  end
end
