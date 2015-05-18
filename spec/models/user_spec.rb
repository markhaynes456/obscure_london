require 'rails_helper'

RSpec.describe User, type: :model do

	describe("Creating Users") do

		before(:each) do
			@user = User.new(:name => "Mark",:password=>"Password")
			@user_two = User.new(:name=>"carl")
		end

		it("Should create a user") do
			expect(@user.valid?).to(be(true))
		end

		it("Should not create a user") do
			expect(@user_two.valid?).to(be(false))
		end

		after(:each) do
			@user.destroy
			@user_two.destroy
		end

	end
  
end
