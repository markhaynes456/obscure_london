require 'rails_helper'

RSpec.describe PlacesController, type: :controller do

	describe("Places") do

		describe("Index") do

			it("returns success code 200") do
				get :index
				expect(response).to(have_http_status(200))
			end

		end

	end

end
