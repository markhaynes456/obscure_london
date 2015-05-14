class PlacesController < ApplicationController

	def index
		@shop = Place.shop
		@EAT = Place.eat
		@play = Place.play
	end	

	def new
		@place = Place.new
	end

	def create
		place = Place.new(place_params)
		if place.save
			flash[:notice] = "Created"
			redirect_to(:places)
		else
			flash[:notice] = "Error creating"
			render("new")
		end
	end


	private

	def place_params
		params.require(:place).permit(:name)
	end	

end
