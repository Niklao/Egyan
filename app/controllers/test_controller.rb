class TestController < ApplicationController
  def index
  end
  def indey
    @book=Book.new
    @book.edition=params[:image]
    @book.name=params[:q]
    @book.save
  end
end
