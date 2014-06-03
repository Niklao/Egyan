class RegisterController < ApplicationController
  layout "bootstrap2"
  def author
    @user=User.new
  end
  def entered
    @user=User.new(user_params)
    if @user.save
      
     else
      redirect_to signup_path
    end
  end
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_id , :phone_no, :password )
  end
end
