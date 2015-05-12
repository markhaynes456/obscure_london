require 'rails_helper'

RSpec.describe Place, type: :model do
	describe("Creating Places") do  
		it("Creates aa valid place") do
			@place = Place.create(name:"London Eye", address_line_one:"london eye", address_line_two:"Southbank", postcode: "ST199PT", description:"Buying Milk",category:"Shopping")
			expect(@place.valid?).to(be(true))
		end  

		it("fails to create a valid place") do
			@place = Place.create()
			expect(@place.valid?).to(be(false))
		end
	end

	describe("place objects") do

		before(:each) do
			@place = Place.create(name:"London Eye", address_line_one:"London Eye", address_line_two:"Southbank", postcode:"ST199PT", description:"loren ipsum etsum loren istsum spusm loren isns usmeos loren istum epson loren itsum spson loren itsum epson loren istsum epson loren istum eposon loren itsum epseon loren itsum epson this is the long blog that should be short in the description",category:"Shopping") 
		end

		it("generates short description") do
			expect(@place.short_description.length).to(eq(150))
		end

		it("Generates the ID used to link to different pages") do
			expect(@place.page_id).to(eq("LondonEye"))
		end

	end

	describe("place class") do

		before(:each) do
			Place.create(name:"London Eye", address_line_one:"London Eye", address_line_two:"Southbank", postcode:"ST199PT", description:"loren ipsum etsum loren istsum spusm loren isns usmeos loren istum epson loren itsum spson loren itsum epson loren istsum epson loren istum eposon loren itsum epseon loren itsum epson this is the long blog that should be short in the description",category:"Shopping") 
			Place.create(name:"London Eye", address_line_one:"London Eye", address_line_two:"Southbank", postcode:"ST199PT", description:"loren ipsum etsum loren istsum spusm loren isns usmeos loren istum epson loren itsum spson loren itsum epson loren istsum epson loren istum eposon loren itsum epseon loren itsum epson this is the long blog that should be short in the description",category:"Shopping") 
			Place.create(name:"London Eye", address_line_one:"London Eye", address_line_two:"Southbank", postcode:"ST199PT", description:"loren ipsum etsum loren istsum spusm loren isns usmeos loren istum epson loren itsum spson loren itsum epson loren istsum epson loren istum eposon loren itsum epseon loren itsum epson this is the long blog that should be short in the description",category:"Shopping") 
			Place.create(name:"London Eye", address_line_one:"London Eye", address_line_two:"Southbank", postcode:"ST199PT", description:"loren ipsum etsum loren istsum spusm loren isns usmeos loren istum epson loren itsum spson loren itsum epson loren istsum epson loren istum eposon loren itsum epseon loren itsum epson this is the long blog that should be short in the description",category:"Shopping") 
			Place.create(name:"London Eye", address_line_one:"London Eye", address_line_two:"Southbank", postcode:"ST199PT", description:"loren ipsum etsum loren istsum spusm loren isns usmeos loren istum epson loren itsum spson loren itsum epson loren istsum epson loren istum eposon loren itsum epseon loren itsum epson this is the long blog that should be short in the description",category:"Food-Drink") 
			Place.create(name:"London Eye", address_line_one:"London Eye", address_line_two:"Southbank", postcode:"ST199PT", description:"loren ipsum etsum loren istsum spusm loren isns usmeos loren istum epson loren itsum spson loren itsum epson loren istsum epson loren istum eposon loren itsum epseon loren itsum epson this is the long blog that should be short in the description",category:"Food-Drink") 
		end

		it("gernerates a list of all places with a category of Shopping") do
			expect(Place.shopping.length).to(eq(4))
		end

		it("generates a list of all places with a category of FoodandDrink") do
			expect(Place.fooddrink.length).to(eq(2))
		end

	end

end
