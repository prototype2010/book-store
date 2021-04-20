class BooksCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :category_id, :bigint, null: false
    add_foreign_key :books, :categories
  end
end
