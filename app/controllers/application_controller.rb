class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

helper_method :current_fighter, :logged_in?
  def current_fighter
    @current_fighter ||= Fighter.find(session[:fighter_id]) if session[:fighter_id]
  end

  def authorize
      unless logged_in?
        redirect_to new_session_path
      end
    end
    
  def logged_in?
    !!current_fighter
  end
end
