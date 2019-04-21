class RegistrationsController < ApplicationController
	def new
		@user = User.new
	end

	def show
	end

	def create
	    #complete this method
	    @user = User.new(registrations_params)
    	if @user.save
    		flash[:notice] = "Registration Complete!"
    		redirect_to "http://localhost:3000/"
    	else
    		flash[:notice] = "Try again"
    		render :new 
    	end
    
	end

	def registrations_params
    	params.require(:registrations).permit(:name, :last_name, :email, :password)
    end
end
