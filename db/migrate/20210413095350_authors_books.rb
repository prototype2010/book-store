class AuthorsBooks < ActiveRecord::Migration[6.1]
  def change
    create_join_table :authors, :books do |t|
      t.index :author_id
      t.index :book_id
    end
  end
end
