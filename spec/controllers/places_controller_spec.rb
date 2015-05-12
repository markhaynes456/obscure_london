require 'rails_helper'

RSpec.describe PlacesController, type: :controller do

	describe("Places") do

		describe("Index") do

			it("returns success code 200") do
				get :index
				expect(response).to(have_http_status(200))
			end

			it("Assigns @places variable") do
				get :index
				expect(assigns(:places)).to(respond_to(:each))
			end

		end

	end

end
