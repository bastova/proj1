class UsersController < ApplicationController
   def index
	@users = User.all
  end
  
  def new
	@user = User.new
  end
  
  def create 
	@user = User.new(params_user) 
	if @user.save 
		redirect_to users_path 
	else 
		render 'new' 
	end 
  end 
  
  def params_user
	params.require(:user).permit(:name, :email, :password)
  end
	
end
