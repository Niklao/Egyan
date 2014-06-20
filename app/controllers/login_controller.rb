class LoginController < ApplicationController
   layout "bootstrap_native"
  def univ
    @user=User.new
  end
  def auth
    if ( params[:email_id][:User] == "" || params[:password][:password] == "")
      render "confirm"
    else
      user=User.authenticate( params[:email_id][:User], params[:password][:password] )
      if user 
        cookies[:user] = user
        render :js => "window.location = '/store'"
      else
        render "check"
      end
    end
  end
  
  def logout
    cookies.delete :user
    redirect_to login_path 
  end
end
