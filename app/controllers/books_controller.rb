class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end
  
   private
   def book_params
     params.require(:book).permit(:title,:body)
   end
  
  
end
