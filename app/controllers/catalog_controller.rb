class CatalogController < ApplicationController
  def index
    x = search_params

  end

  private

  def search_params
    params.permit(:category, :sort, :direction)
  end
end
