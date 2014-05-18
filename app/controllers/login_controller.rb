class LoginController < ApplicationController
   layout "bootstrap_native"
  def univ
    @user=User.new
  end
  def auth
    #render nothing: true
    user=User.authenticate( params[:email_id][:User], params[:password][:password] )

    if user
      cookies[:user] = user
      redirect_to store_path , status: 301
    else
    
   flash.now.alert = "its working"
      redirect_to login_path
    end
  end
  
  def logout
    cookies.delete :user
    redirect_to login_path 
  end
end
