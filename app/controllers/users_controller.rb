class UsersController < ApplicationController
  before_action :logged_in_user, only:[:index, :destroy]
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page])
  end  

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Management App!"
      redirect_to @user
    else
      render 'new'
    end   
  end  

  def index
    @users = User.paginate(page: params[:page])
  end  

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end  

  

  private
    
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    

    

end
