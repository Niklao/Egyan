class DashboardController < ApplicationController
  def index
    user=logger()
    
  end
  
  def logger
    @user=cookies[:user]
    if @user
      @user_id=User.get_user( @user )
      return @user
    else
      redirect_to login_path
    end
  end
end
