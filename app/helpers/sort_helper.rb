module SortHelper
  DEFAULT_SORT = 'newest_first'
  BOOKS_SORT = {
    newest_first: {sort: 'created_at', direction: 'ASC', display_text: "Newest first"},
    popular_first: {sort: 'created_at', direction: 'DESC', display_text: "Popular first"},
    price_low_high: {sort: 'price', direction: 'ASC', display_text: "Price: Low to high"},
    price_high_low: {sort: 'price', direction: 'DESC', display_text: "Price: High to low"},
  }

  def default_sort
    BOOKS_SORT[DEFAULT_SORT.to_sym]
  end

  def sort_details(sort)
    sort = sort.nil? ? DEFAULT_SORT : sort
    sort_sym = sort.to_sym

    return default_sort unless BOOKS_SORT.key?(sort_sym)

    BOOKS_SORT[sort_sym]
  end
end
