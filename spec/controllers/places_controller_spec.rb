require 'rails_helper'

RSpec.describe PlacesController, type: :controller do

	describe("#INDEX") do
		
		it("Should respond with 200 success status") do
			get :index
			expect(response.status).to(be(200))
		end

		it("Should assign all places to EAT to @eat") do
			get :index
			expect(assigns(@eat)).to(respond_to(:each))
		end

		it("Should assign all places to Play to @play") do
			get :index
			expect(assigns(@play)).to(respond_to(:each))
		end

		it("Should assign all places to SHOP to @shop") do
			get :index
			expect(assigns(@shop)).to(respond_to(:each))
		end

	end

	describe("#NEW") do

		it("Should assign a new Place to @place") do
			
		end

	end

	describe("#CREATE") do

		it("When valid informaton is passed it should create a new Place") do
			allow_any_instance_of(Place).to(receive(:valid?)).and_return(true)
			post :create, :place => {name:"New place"}
			expect(flash[:notice]).not_to(be_nil)
			expect(Place.find_by(name: "New place")).to(be_instance_of(Place))
			expect(response).to(redirect_to(:places))
		end

		it("When invalid infomration is passed it should not create a new Place") do
			allow_any_instance_of(Place).to(receive(:valid?)).and_return(false)
			post :create, :place => {name: "bad place"}
			expect(flash[:notice]).not_to(be_nil)
			expect(Place.find_by(name:"bad place")).to(be_nil)			
			expect(response).to(render_template("new"))
		end
	end

end
