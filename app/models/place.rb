class Place < ActiveRecord::Base

	#validates :address_line_one, presence:true
	#validates :address_line_two, presence:true
	#validates :postcode, presence:true
	#validates :name, presence:true
	#validates :description, presence:true
	#validates :category, presence:true

	has_attached_file :image, :styles => { :medium => "300x300"}, :default_url => "/images/:style/missing.png"
	
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


	def short_description
		description[0..149]	
	end

	def page_id
		name.tr(" ","")
	end

	def self.shopping
		active_places.where(category:"Shopping")
	end

	def self.fooddrink
		active_places.where(category:"Food-Drink")
	end

	def self.active_places
		all.where(active:true)
	end

end
