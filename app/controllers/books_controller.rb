class BooksController < ApplicationController
  include SortHelper

  def index
    @categories = Category.all
    books = Book.by_category(params[:category])
                .use_sort(sort_details(params[:sort]))
    @pagy, @books = pagy(books, link_extra: 'data-remote="true"')

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
    params.permit(:category, :sort)
  end
end
