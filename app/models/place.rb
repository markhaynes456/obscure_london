class Place < ActiveRecord::Base

	validates :name, presence:true
	validates :description, presence:true
	validates :category, presence:true

	has_attached_file :image, :styles => {:medium => "300x300", :thumb => "100x100"}, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

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
