class UserController < ApplicationController
  def index
    @user = User.all
  end

  def create
    @user = User.create
      if @user.save
        redirect_to :action => post_url
      else
        render :action => post_url
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
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
