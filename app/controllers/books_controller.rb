class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    redirect_to book_path(@book)

  end

  def show
    @book = Book.find_by_id(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :summary)
  end

end
