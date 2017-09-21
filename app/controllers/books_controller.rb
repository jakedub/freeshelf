class BooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.user == current_user
      if @book.update(book_params)
        redirect_to @book
      else
        render 'edit'
      end
    else
      redirect_to root
    end
  end

  def edit
    @book = Book.find(params[:id])
  end


  def destroy
    if @book.user == current_user
      @book = Book.find(para ms[:id])
      @book.destroy
      redirect_to books_path
    else
      redirect_to root
    end
  end

private
  def book_params
    params.require(:book).permit(:title, :author, :description, :url, :image, :remove_image, :image_cache)
  end
end
