class AddImageToPlace < ActiveRecord::Migration
  def self.up
		add_attachment :places, :image
	end

	def self.down
		remove_attachment :places, :image
	end
end
