class UploadyController < ApplicationController
  def step_one
    @book = book.new
    @user = user.new
  end
  def step_two
    
  end
  def step_three
    @book = book.new
    @user = user.new
  end
  def finish
    
  end
end
