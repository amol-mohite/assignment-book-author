class BooksController < ApplicationController
before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index 
    @books = Book.all	
  end

  def show
  end
  
  def new
    @book = Book.new
    @authors = Author.all
  end

  def edit
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book 
	  else
		  redirect_to 'new'
	  end
  end

  def update
    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end
  
  private
  
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :front_page_link, :rating, :no_of_pages, :price, author_ids:[])
  end
end
