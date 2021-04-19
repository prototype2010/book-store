class BooksController < ApplicationController
  def index
    @categories = Category.all

    @pagy, @books = pagy(Book.all, link_extra: 'data-remote="true"')
    #
    respond_to do |format|
      format.html
      # format.js { render 'index.js.haml' }
    end
  end

  private

  def search_params
    params.permit(:category, :sort, :direction)
  end
end
