class RegisterController < ApplicationController
  layout "bootstrap2"
  def author
    @user=User.new
  end
  def yup
    @user=User.new(params[:user])
    user.save
  end
end
