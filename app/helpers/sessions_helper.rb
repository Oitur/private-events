module SessionsHelper
  def logged_in?
    unless session[:id]
      flash[:danger] = "You need to log in first"
      redirect_to login_path
    end
  end
end
