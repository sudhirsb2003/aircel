class SessionsController < ApplicationController

	def new
	end

	def create
		user=User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to root_path , notice: "Successfully Logged In"
		else
			redirect_to login_path , notice: "Invalid Username/Password"

		end
	end

	def destroy
		session[:user_id]=nil
		redirect_to login_path , notice: "Logged Out"
	end

end
