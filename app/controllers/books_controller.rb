class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    # root "books#show"
    redirect_to controller: :books, action: :show, id: book.id
    # redirect_to list_path(@book.id)
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    # @book = Book.find_by(id: params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end


  private
  # ストロングパラメータ
  def book_params
    params.permit(:title, :body)
    # params.require(:book).permit(:title, :body)
  end
end