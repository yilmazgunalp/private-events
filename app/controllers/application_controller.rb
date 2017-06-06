class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
def current_user
User.find_by_username(session[:user_id])
end	

def logout 
session[:user_id] = nil
redirect_to events_path
end	

end
