class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def log_in(user)
    session[:user_id] = user.id
  end

  def log_out
    session[:user_id] = nil
  end

  def reject_user
    redirect_to root_path, alert: 'Вам сюда низя!'
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
