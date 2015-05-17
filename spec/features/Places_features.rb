require 'rails_helper'

describe "Place Feature", :type => :feature  do

	it("#NEW Should create a new place") do
		visit "/places/new"
		fill_in('place[name]',:with => 'london')
		fill_in('place[description]',:with => 'london')
		select('PLAY', :from => 'place[category]')
		fill_in('place[address]',:with => 'london')
		fill_in('place[postcode]',:with => 'london')
		fill_in('place[tube]',:with => 'london')
		fill_in('place[cost]',:with => 'london')
		fill_in('place[monday]',:with => 'london')
		fill_in('place[tuesday]',:with => 'london')
		fill_in('place[wednesday]',:with => 'london')
		fill_in('place[thursday]',:with => 'london')
		fill_in('place[friday]',:with => 'london')
		fill_in('place[saturday]',:with => 'london')
		fill_in('place[sunday]',:with => 'london')
		attach_file('place[image]','spec/features/bg3.jpg')
		click_button('Create Place')
		expect(page).to(have_content('london'))
	end

	it("#INDEX displays all") do
		Place.create(:name=>"london",:category=>"PLAY",:description=>"car")
		Place.create(:name=>"newcastle",:category=>"PLAY", :description=>"car")
		visit "/places/"
		expect(page).to(have_content('newcastle'))
		expect(page).to(have_content('london'))
	end

end
