class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :photo_url
      t.string :title
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
