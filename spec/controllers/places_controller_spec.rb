require 'rails_helper'

RSpec.describe PlacesController, type: :controller do

	describe("Places") do

		describe("#Index") do

			it("returns success code 200") do
				get :index
				expect(response).to(have_http_status(200))
			end

			it("Assigns @places variable") do
				get :index
				expect(assigns(:places)).to(respond_to(:each))
			end

		end

		describe("Place #create") do

			it "Should redirect to index with a notice of succesful save" do
				allow_any_instance_of(Place).to(receive(:valid?)).and_return(true)
				post :create, :place => {:name => "name"}
				expect(flash[:notice]).not_to(be_nil)
				expect(response).to(redirect_to(places_url))
				expect(Place.find(1)).not_to(be_nil)	
			end

			it "Should render new template with notice error on failed save" do
				allow_any_instance_of(Place).to(receive(:valid?)).and_return(false)
				post :create, :place => {:name => "name"}
				expect(flash[:notice]).not_to(be_nil)
				expect(response).to(render_template("new"))		
			end

			it "Should pass params to the create method" do
				post :create, :place => {:address_line_one => "8 marston road", :address_line_two => "wicked aston", :postcode => "EH28 9QB", :name => "le Restaurante", :description => "lorem itsum postus iloem rem itusm epson loren istem epsun", :category => "Shopping"}
				expect(assigns[:place].name).to( eq('le Restaurante') )
			end
		
		end

	end

end
