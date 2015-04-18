class Place < ActiveRecord::Base

	validates :address_line_one, presence:true
	validates :address_line_two, presence:true
	validates :postcode, presence:true
	validates :name, presence:true
	validates :description, presence:true
	validates :category, presence:true

	def short_description
		description[0..149]	
	end

	def page_id
		"#" + name.tr(" ","")
	end

end
