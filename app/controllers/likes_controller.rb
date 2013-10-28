class LikesController < ApplicationController
  def index
	#@likes = Like.all
	if user_signed_in?
		@likes = Like.where(user_id: current_user)
		else
		@likes = []
	end
  end

  def new
	@like = Like.new
  end
  
   def create
	  @like = Like.new(params[:like])
	  if(@like.user_id != current_user.id)
		redirect_to root_path
	else
		if @like.save
			redirect_to likes_path
		else
			render 'new'
		end
	end
  end


  def params_user
	params.require(:like).permit(:title, :user_id, :user, :sport)
  end
  
  def show
	@like = Like.find(params[:id])
  end
  
  def edit
    @like = Like.find(params[:id])
  end

  def update
    @like = Like.find(params[:id])
    if @like.update_attributes(params[:like])
      redirect_to likes_path(@like.id)
    else
      render 'edit'
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to likes_path
  end
end
