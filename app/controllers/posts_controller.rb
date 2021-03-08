class PostsController < ApplicationController
  before_action :logged_in_user, only: [:index, :new, :edit, :create, :destroy]

  def index
    @posts = Post.paginate(page: params[:page])
  end
  
  def new
   @post = current_user.posts.build if logged_in?
  end

  def show
    @post = Post.find(params[:id])
  end  

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_url
    else
      render 'posts/new'  
    end

  end

  def edit
    @post = Post.find(params[:id])
  end  

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'posts/edit'
    end    
  end  

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_url
  end  

  def students
  end
  
  def sute_chil_1
    @posts = Post.where(classify: "Tanaka")
  end  

  def sute_chil_2
    @posts = Post.where(classify: "Kiriyama")
  end  

  def sute_chil_3
    @posts = Post.where(classify: "Sato")
  end  

  def sute_chil_4
    @posts = Post.where(classify: "Suzuki")
  end  

  def sute_chil_5
    @posts = Post.where(classify: "Sasaki")
  end  

  

  private

    def post_params
      params.require(:post).permit(:date, :grade, :subject, :today, :hw, :next, :classify)
    end  
  
  
end
