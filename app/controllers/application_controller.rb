class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

	def logged_in
		if session['user_id'].is_a?(Fixnum)
		else
			redirect_to(:new_session)
		end
	end

end
