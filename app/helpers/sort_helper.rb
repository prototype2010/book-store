module SortHelper
  DEFAULT_SORT = 'newest_first'
  BOOKS_SORT = {
    newest_first: {sort: 'created_at', direction: 'ASC', display_text: "Newest first"},
    popular_first: {sort: 'created_at', direction: 'DESC', display_text: "Popular first"},
    price_low_high: {sort: 'price', direction: 'ASC', display_text: "Price: Low to high"},
    price_high_low: {sort: 'price', direction: 'DESC', display_text: "Price: High to low"},
  }

  def default_sort
    sort_details
  end

  def sort_details(sort = DEFAULT_SORT)
    sort_type = sort.nil? ? DEFAULT_SORT : sort

    return BOOKS_SORT[DEFAULT_SORT.to_sym] unless BOOKS_SORT.key?(sort_type.to_sym)

    BOOKS_SORT[sort_type.to_sym]
  end
end
