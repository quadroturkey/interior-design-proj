class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.sort_by{|post| post.likes.count}.reverse
  end

  def show
  end
  
  def new
    @post = Post.new
  end

  def create
    @user = User.find(session[:user_id])
    @post = Post.new(title: params[:post][:title], description: params[:post][:description], user: current_user)
    @post.picture.attach(params[:post][:picture])
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to @post
  end
  
  def destroy
    @post.destroy
    redirect_to posts_path
  end
  
  private

  def find_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:title, :pictures [], :description, :user_id)
  end
end
  
