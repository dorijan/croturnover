class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery
  
  def login_required
    if session[:user_id]
      return true
    end
    redirect_to :login, :notice => t(:logintocont)
    return false 
  end  
  
end
