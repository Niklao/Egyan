class HomeController < ApplicationController
   layout  "bootstrap1"
  def index
	 @user=User.new
  end
end
