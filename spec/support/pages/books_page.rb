class BooksPage < SitePrism::Page
  set_url '/books'

  element :sorting, '#sorting'
  element :categories, '#categories'
  element :books, '#books'
  element :paginator, '#paginator'
end
