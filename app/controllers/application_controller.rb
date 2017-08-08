class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?
  
  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # !!把current_user轉成布林值，只有!!nil & !!false是false，其餘都是true
  def logged_in?
    !!current_user
  end
end
