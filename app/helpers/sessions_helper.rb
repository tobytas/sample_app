module SessionsHelper

  # Logs in current user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged in user (if exists)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is registered, otherwise false
  def logged_in?
    !current_user.nil?
  end
end
