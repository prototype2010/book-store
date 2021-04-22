class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.float :price, null: false
      t.text :description, null: false
      t.float :width, null: false
      t.float :height, null: false
      t.float :length, null: false
      t.timestamp :publish_year, null: false
      t.string :images, array: true, null: false
      t.string :materials, null: false

      t.timestamps
    end
  end
end
