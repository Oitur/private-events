class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      session[:id] = user.id
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    session.delete(:id)
    redirect_to login_path
  end
end
