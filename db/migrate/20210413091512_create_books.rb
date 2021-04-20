class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :photo_url, null: false
      t.string :title, null: false
      t.float :price, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
