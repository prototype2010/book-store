module BooksHelper
  All = 'All'

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

    total_books = categories
                    .map { |category| category[:books_count] }
                    .sum

    categories.unshift({
                  name: nil,
                  display_name: All,
                  books_count: total_books
                })
  end

  def to_i18_key(string)
    string.nil? ? All.downcase : string.gsub(' ','_').underscore
  end

end
