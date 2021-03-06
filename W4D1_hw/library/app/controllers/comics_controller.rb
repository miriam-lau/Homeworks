class ComicsController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def new
    # your code here
  end

  def create
    # your code here
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_url
    #is books_url a default?
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
