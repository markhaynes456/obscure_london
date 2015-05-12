require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
		
	describe("#create") do
			
		before(:each) do
			@user = User.create(:name=>"name",:password=>"password")
		end
		
		it("Should redirect to display a list of posts to approve on correct login") do
			post :create, :user => {:name => "name", :password => "password"}	
			expect(session[:user]).to_not(be_nil)
			expect(flash[:notice]).to_not(be_nil)
			expect(response).to(redirect_to(:sessions))
		end
		
		it("Should reload the form if incorrect login entered") do
			post :create, :user => {:name => "mark", :password=>"password"}
			expect(session[:user]).to(be_nil)
			expect(flash[:notice]).to(be_nil)
			expect(response).to(render_template("new"))
		end
		
	end
		
		
	describe("#new") do
		
		it("Should return 200") do
			get :new
			expect(response.status).to(eq(200))
		end
		
	end
		
	describe("#delete") do
		
	end
		
end	
