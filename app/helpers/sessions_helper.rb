module SessionsHelper
  def current_user
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
  end
  
  def signed_in?
    if current_user
      return true
    else
      return false
    end
  end
end
