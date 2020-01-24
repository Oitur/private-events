# frozen_string_literal: true

module SessionsHelper
  def logged_in?
    return if session[:id]

    flash[:danger] = 'You need to log in first'
    redirect_to login_path
  end

  def autologin(user)
    session[:id] = user.id
    flash[:success] = "Successfully logged in"
  end
end
