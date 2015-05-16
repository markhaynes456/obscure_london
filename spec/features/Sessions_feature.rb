require("rails_helper")

describe("Session Feature", :type => :feature) do

	describe("Log in") do

		before(:each) do
			User.create(name:"Mark",password:"password")
			Place.create(name:"london",description:"Big Ben",category:"SHOP")
		end

		it("Should log in") do
			visit "/sessions/new"
			fill_in( 'user[name]', :with => "mark"  )
			fill_in( 'user[password]', :with => "password" )
			click_button("Login")
			expect(page).to(have_content("Success"))
		end
	
		it("Should not log in") do
			visit "/sessions/new"
			fill_in('user[name]', :with => "kelvin")
			fill_in('user[password]', :with => "password")
			click_button("Login")
			expect(page).to(have_content("Failure"))
		end
	
	end

end 
