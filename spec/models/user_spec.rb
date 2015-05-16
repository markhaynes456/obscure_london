require 'rails_helper'

RSpec.describe User, type: :model do

	describe("Creating Users") do

		it("Should create a user") do
			@user = User.new(:name=>"Mark",:password=>"password")
			expect(@user.valid?).to(be(true))
		end

		it("Should not create a user") do
			@user = User.new(:name=>"Mark")
			expect(@user.valid?).to(be(false))
		end

	end
  
end
