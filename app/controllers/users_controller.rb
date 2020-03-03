class UsersController < ApplicationController
  def index
    @user = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if User.new
        redirect_to post_url
      else
        redirect_to post_url
      end
  end

  def show
    @user = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :username, :email, :password)
  end
end
