class PlacesController < ApplicationController

	def index
		@places = Place.all
		@shopping = Place.shopping
		@fooddrink = Place.fooddrink
	end

end
