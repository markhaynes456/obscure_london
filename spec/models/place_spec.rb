require 'rails_helper'

RSpec.describe Place, type: :model do
  
	describe("Class methods") do
		
		before(:each) do
			Place.create(:name => "Place",:description=>"car", :category => "EAT")
			Place.create(:name => "Place",:description=>"car", :category => "EAT")	
			Place.create(:name => "Place",:description=>"car", :category => "EAT")
			Place.create(:name => "Place",:description=>"car", :category => "SHOP")	
			Place.create(:name => "Place",:description=>"car", :category => "SHOP")
			Place.create(:name => "Place",:description=>"car", :category => "PLAY")	
			Place.create(:name => "Place",:description=>"car", :category => "EAT")
			Place.create(:name => "Place",:description=>"car", :category => "EAT")
		end
	
		it("Should display all Places") do
			expect(Place.all.size).to(be(8))
		end

		it("Should return a list of places to eat") do
			expect(Place.eat.size).to(be(5))
		end

		it("Should return a list of places to shop") do
			expect(Place.shop.size).to(be(2))
		end

		it("Should return a places with activities") do
			expect(Place.play.size).to(be(1))
		end

	end


	describe("Object methods") do
	
	end

end
