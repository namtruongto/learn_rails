class BooksController < ApplicationController

  # GET /articles or /articles.json
  def index
    @books = Book.all
  end

  # GET /articles/1 or /articles/1.json
  def show
    @haha = "haha"
    # debugger
    @book = Book.find(params[:id])
  end

  def new 
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :author))
    if @book.save
      flash[:notice] = "Book was successfully created"
      redirect_to @book 
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

end
