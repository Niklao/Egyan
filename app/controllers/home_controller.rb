class HomeController < ApplicationController
   layout  "bootstrap_native"
  def index
	 @user=User.new
  end
end
