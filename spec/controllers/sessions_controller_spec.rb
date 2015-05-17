require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

	describe("#NEW") do
		it("Should be return 200") do
			get :new
			expect(response.status).to(eq(200))
		end	
	end

	describe("#CREATE") do

		before(:all) do
			User.create(:name=>"kelvin",:password=>"password")
		end

		it("On valid user credentials should create a session containing user ID") do
			post :create, :user=>{:name=>"kelvin",:password=>"password"}
			expect(session[:user_id]).to(eq(1))
		end

		it("On non valid user credentials should not create user sessions")	 do
			post :create, :user=>{:name=>"mark",:password=>"password"}
			expect(session[:user_id]).to(be_nil)
		end
	end

end
