class UsersController < ApplicationController
  def index
	@users = User.has_name
  end
  
  def new
	@user = User.new
  end
  
  def create 
	@user = User.new(params[:user]) 
	if @user.save 
		redirect_to users_path 
	else 
		render 'new' 
	end 
  end 
  
  def params_user
	params.require(:user).permit(:name, :email, :password)
  end
  
  def show
	#if user_signed_in?
	#	@user = User.where(user_id: current_user)
	#end
	@user = User.find(params[:id])
	if user_signed_in?
		@images = Image.where(user_id: @user.id)
		else
		@images = []
	end
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

	
end
