class SessionsController < ApplicationController
  def create
	user = Referee.find_by_username(params[:username])
	#user = Referee.where(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:referee_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
    else
      render :new
    end
  end

  def new
  end

  def destroy
	session[:referee_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
