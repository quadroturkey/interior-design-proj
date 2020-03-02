class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def show
    @users = User.find(parmas[:id])
  end

  # def create
  #   @users = User.new(name: user_parmas[:name], username: user_parmas[:username], email: user_parmas[:email], password: user_parmas[:password])
  # end

  def edit
    @users = User.find(parmas[:id])
  end


  def delete
    @users = User.destroy
  end

  def update
    @users = User.find(parmas[:id])
    @users = User.find.update(name: user_parmas[:name], username: user_parmas[:username], email: user_parmas[:email], password: user_parmas[:password])
  end

  private

  def user_parmas
  parmas.require(:user).permit(:name, :username, :email, :password)
  end
end
