class PostController < ApplicationController
  def index
    @user = Post.all
  end
  
  def create
    @post = Post.create
  end
  
  def show
    @post = Post.all
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_params(@post)
  end
  
  def destroy
    Post.find(params[:id]).destroy
    redirect_to post_params
  end
  
  private
  
  def post_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
  