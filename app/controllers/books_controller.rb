class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params_book)
    @book.user = current_user
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def params_book
    params.require(:book).permit(:title, :description, :price_per_day, :photo)
  end
end
