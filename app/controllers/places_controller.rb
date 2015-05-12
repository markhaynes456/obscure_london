class PlacesController < ApplicationController

	def index
		@places = Place.active_places
		@shopping = Place.shopping
		@fooddrink = Place.fooddrink
	end

	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)
		if @place.save
			flash[:notice] = "succesfully create a new Place"
			redirect_to(:places)
		else
			flash[:notice] = "Error creating place"
			render 'new' 
		end
	end

	def update
		@place = Place.find(params[:id])
		if @place.update_attributes(place_params)
			redirect_to(:sessions)
		else
			redirect_to(:sessions)
		end
	end

	private
	
	def place_params
		params.require(:place).permit(:id,:name,:image)
	end

end
