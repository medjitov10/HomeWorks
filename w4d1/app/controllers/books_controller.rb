class BooksController < ApplicationController
  def index
    # your code here
    @books = Book.all
    render :index
  end

  def new
    # your code here
    render :new
  end

  def create
    # your code here
    Book.create!(book_params)
    redirect_to books_url
  end

  def destroy
    # your code here
    book =  Book.find(params[:id])

    if book
      book.destroy
      redirect_to books_url
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
