class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

def create
@user = User.create(user_params)
session[:user_id] = @user.username	
redirect_to @user  
end	


def index
@users = User.all

end	




def signin

@user = User.find_by_username(params[:user][:username])
if @user && @user.authenticate(params[:user][:password])
session[:user_id] = @user.username	
redirect_to @user
else
flash.now[:danger] = "Wrong buddy!"
render 'login'	
end	

end	



private

def user_params

params.require(:user).permit(:username, :email, :password)
end	



end
