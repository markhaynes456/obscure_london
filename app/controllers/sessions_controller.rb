class SessionsController < ApplicationController

	layout "admin"
	before_filter :logged_in, only: [:index]
	
	def new
		@user = User.new
	end

	def create
		@user = User.find_by(session_params)
		if @user.respond_to?("valid?")
			flash['notice'] = "Success"
			session['user_id'] = @user.id
			redirect_to(:sessions)
		else
			flash['notice'] = "Failure"
			redirect_to(:new_session)
		end
	end


	private

	def session_params
		params.require(:user).permit(:name,:password)
	end

end
