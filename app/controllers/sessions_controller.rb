class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])

    else
      flash[:error] = "There's something wrong with your username or password"
      redirect_to register_path          
    end
  end

  def destroy
  
  end

end