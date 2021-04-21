class BooksController < ApplicationController
  include SortHelper

  def index
    @categories = Category.all

    @pagy, @books = pagy(Book.all, link_extra: 'data-remote="true"')
    respond_to do |format|
      format.html
      format.js { render 'index.js.haml', layout: false }
    end
  end

  def show
    @book = Book.find(params[:id])

    unless @book
      flash[:notice] = 'Book not found'
      redirect_to(:index)
    end
  end

  private

  def search_params
    params.permit(:category, :sort, :direction)
  end
end
