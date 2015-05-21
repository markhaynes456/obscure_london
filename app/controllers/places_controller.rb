class PlacesController < ApplicationController

	layout "admin", only:[:new]
	before_filter :logged_in, only:[:new]

	def index
		@places = Place.all
		@shop = Place.shop
		@eat = Place.eat
		@play = Place.play
	end	

	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)
		if @place.save
			flash[:notice] = "Created"
			redirect_to(:places)
		else
			flash[:notice] = "Error creating"
			render("new")
		end
	end


	private

	def place_params
		params.require(:place).permit(:name,:description,:category,:cost,:addressi,:postcode,:tube,:monday,:tuesday,:wednesday,:thursday,:friday,:saturday,:sunday,:image)
	end	

end
