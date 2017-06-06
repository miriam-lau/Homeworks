class BooksController < ApplicationController
  def initialize
    puts "----------------"
  end

  def index
    @books = Book.all
    puts "**************"
    render :index
  end

  def new
    render :new
  end

  def create
    new_book = Book.new(book_params)
    new_book.save
    redirect_to books_url
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
