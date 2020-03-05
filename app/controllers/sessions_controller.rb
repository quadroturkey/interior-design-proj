class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :welcome]

    def new
    end
    
    def login
    end

    def create
       @user = User.find_by(username: params[:username])
       if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to '/welcome'
       else
          redirect_to '/login'
       end
    end
  
    def destroy
      session.delete(:user_id)
      redirect_to root_url
    end

    def page_requires_login
    end
end