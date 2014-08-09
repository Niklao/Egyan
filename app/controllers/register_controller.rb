class RegisterController < ApplicationController
  layout "bootstrap_native"
  def author
    @user=User.new
  end
  def entered
    @user_j=User.new(user_params)
    if @user_j.save
      	render :js => "window.location = '/login'"
     else
      render 'entered'
    end
  end
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_id , :password, :gender )
  end
end
