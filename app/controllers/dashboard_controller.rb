class DashboardController < ApplicationController
  layout  "bootstrap_native"
  def index
    @user_name=logger()
    @book=Book.new
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
  
  def uploader
    @book=Book.new
  end
  def step2
    @book=Book.new
  end
  def step3
    @book=Book.new
  end
end
