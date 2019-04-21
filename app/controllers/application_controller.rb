class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def index

  end

  def current_user
    session = session[:user_id]
    if session
      @current_user ||= User.find(session)
    end
  end

  def is_user_logged_in?
	#complete this method
    logged_in = current_user
  	if logged_in 
      then true 
    else 
      redirect_to root_path 
    end 
  end
end
