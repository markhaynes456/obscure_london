class SessionsController < ApplicationController

	before_filter :logged_in?, :only => 'index'

	def index
		@places = Place.all
	end

	def new
		@user = User.new
	end

	def create
		user = User.find_by(user_params)
		if user
			session[:user] = user.id
			flash[:notice] = "Logged in"
			redirect_to(:sessions)
		else
			@user = User.new
			render("new")
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :password)
	end

	def logged_in?
		if session[:user] == nil
			redirect_to(:new_session)
		end
	end


end
