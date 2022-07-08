class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    # root "books#show"
    redirect_to "/show"
  end

  def index
    # @book = Book.all
  end

  def show
    # @book = Book.find_by(id: params[:id])
  end

  def edit
  end


  private
  # ストロングパラメータ
  def book_params
    params.permit(:title, :body)
    # params.require(:book).permit(:title, :body)
  end
end