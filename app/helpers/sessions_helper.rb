module SessionsHelper
  
  def langu
    @langu = read_langu_cookie
  end

  def langu=(langu)
    @langu = langu
  end

  def read_langu_cookie
   a = cookies[:fms_language]
   if a.nil?
   self.langu = 'EN'
   end
   self.langu = a
  end

  def set_langu(la)
    cookies.permanent[:fms_language] = la
  end

  def sign_in(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    self.current_user = user
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def signed_in?
    !current_user.nil?
  end

  def is_admin?
    if current_user.nil?
      false 
    else
     @admin= Admin.find_by_user_id(current_user.id) 
     if @admin.nil?
       false
     else
     @admin.admin == true
     end
    end
  end
  
  def sign_out
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def current_user?(user)
    user == current_user
  end
  
  def authenticate
    deny_access unless signed_in?
  end

  

  def deny_access
    store_location
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end
  
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end

  def store_location
    session[:return_to] = request.fullpath
  end
  
  private

    def user_from_remember_token
      User.authenticate_with_salt(*remember_token)
    end
    
    def remember_token
      cookies.signed[:remember_token] || [nil, nil]
    end

    def store_location
      session[:return_to] = request.fullpath
    end

    def clear_return_to
      session[:return_to] = nil
    end
end



