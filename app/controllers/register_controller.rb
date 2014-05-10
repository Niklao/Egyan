class RegisterController < ApplicationController
  layout "bootstrap2"
  def author
    @user=User.new
  end
  def entered
    @user=User.new{params[:user]}
    if @user.save
      
     else
      render author
    end
  end
end
