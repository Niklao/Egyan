class DashboardController < ApplicationController
  layout  "dashboard"
  def index
    @user_name=logger()
  end
  def setting
    
  end
  private
  
  def logger
    @user=cookies[:user]
    if @user
      @user_id=User.get_user( @user )
      return @user_id
    else
      redirect_to login_path
    end
  end
end
