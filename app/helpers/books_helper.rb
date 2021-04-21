module BooksHelper
  include SortHelper
  ALL = 'All'

  def book_authors(book)
    book.authors
        .map { |author| "#{author.first_name} #{author.last_name}" }
        .join(', ')
  end

  def books_categories
    categories = Category.all.map do |category|
      {
        name: category.name,
        display_name: category.name,
        books_count: category.books_count
      }
    end

    categories.unshift({
                  name: nil,
                  display_name: ALL,
                  books_count: books_sum(categories)
                })
  end

  def to_i18_key(string)
    return ALL.downcase if string.nil?

    string.gsub(' ','_').underscore
  end

  private

  def books_sum(categories)
    categories
      .map { |category| category[:books_count] }
      .sum
  end
end
