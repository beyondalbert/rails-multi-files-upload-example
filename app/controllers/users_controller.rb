require 'bcrypt'
class UsersController < ApplicationController
  def login
		@user = User.where(login: params[:login]).first
		if @user
			if @user.password_hash == BCrypt::Engine.hash_secret(params[:password], @user.password_salt)
				session[:user] = @user.token
				redirect_to :controller => "files", :action => "index"
			end
		end
  end

  def logout
		session[:user] = nil
		redirect_to :controller => "files", :action => "index"
  end
end
