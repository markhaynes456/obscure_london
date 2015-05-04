class SessionsController < ApplicationController


	def new

	end

	def create
			user = find_by(name:params["name"],password:params["password"])
		if user.valid?	
			session[:user] = user.id
			flash[:notice] = "Logged in"
		else
			falsh[:notice] = "Login failed"
		end
	end

	def destroy

	end

	private
	def user_params
		params.permit(:name, :password)
	end

end
