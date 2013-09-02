module ApplicationHelper
	def current_user
		session[:user] ? User.find_by_token(session[:user]) : nil
	end
end
