# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      autologin(user)
      redirect_to user
    else
      flash.now[:danger] = 'User not found'
      render 'new'
    end
  end

  def destroy
    session.delete(:id)
    redirect_to login_path
  end
end
