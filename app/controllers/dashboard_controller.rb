class DashboardController < ApplicationController
  def index
    @user=cookies[:user]
    if @user
      @user_id=User.get_user( @user )
    else
      redirect_to login_path
    end
   #@user = User.find_by( email_id: "#{user_id}" ) 
 
   #@first_name=@user.first_name
  end
end
