class BooksController < ApplicationController
  def index
    @categories = Category.all
    @pagy, @books = pagy(Book.all.order(created_at: :desc))
  end

  private

  def search_params
    params.permit(:category, :sort, :direction)
  end
end
