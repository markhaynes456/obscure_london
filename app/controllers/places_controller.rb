class PlacesController < ApplicationController

	#  layout "admin", only:[:new]
	before_filter :logged_in, only:[:new, :edit]

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

	def update
		@place = Place.find_by(params[:id])
		if @place.update_attributes(place_params)
			redirect_to(:places)
		else
			redirect_to(:edit_palce)
		end
	end

	def edit
		@place = Place.find(params[:id])
	end

	def destroy
    	@place = Place.find(params[:id])
    	@place.destroy
    	redirect_to(:places)
  	end

	private

	def place_params
		params.require(:place).permit(:name,:description,:category,:cost,:address,:postcode,:tube,:monday,:tuesday,:wednesday,:thursday,:friday,:saturday,:sunday,:image)
	end	

end
