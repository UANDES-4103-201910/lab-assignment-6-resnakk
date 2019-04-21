class SessionsController < ApplicationController
	def new
		
	end

	def create
		#complete this method
		user = User.find_by( email: params[:session][:email].downcase)
		password = params[:session][:password]
		if user && user[:password] == password
			log_in user
			redirect_to "/users/#{user[:id]}"
			flash[:notice] = "Welcome to my empire!"
		else
			flash.now[:notice] = "Try again"
			render :new
		end
	end

	def destroy
		#complete this method
		log_out
		redirect_to root_path
	end
end
