module SortHelper
  DEFAULT_SORT = 'newest_first'.freeze
  BOOKS_SORT = {
    newest_first: { sort: 'created_at', direction: 'ASC', display_text: I18n.t('books.filters.newest_first') },
    popular_first: { sort: 'created_at', direction: 'DESC', display_text: I18n.t('books.filters.popular_first') },
    price_low_high: { sort: 'price', direction: 'ASC', display_text: I18n.t('books.filters.price_low_high') },
    price_high_low: { sort: 'price', direction: 'DESC', display_text: I18n.t('books.filters.price_high_low') }
  }.freeze

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
