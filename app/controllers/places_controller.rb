class PlacesController < ApplicationController

	def index
		@places = Place.all
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

	private
	
	def place_params
		params.require(:place).permit(:name,:address_line_one,:address_line_two,:postcode,:tube_station,:price,:description,:opening_times_monday,:opening_times_tuesday,:opening_times_wednesday, :opening_times_thursday, :opening_times_friday, :opening_times_saturday,:category)
	end

end
