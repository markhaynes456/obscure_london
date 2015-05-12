class Place < ActiveRecord::Base

	def self.eat
		all.where(category:"EAT")
	end

	def self.shop
		all.where(category:"SHOP")
	end

	def self.play
		all.where(category:"PLAY")
	end

end
