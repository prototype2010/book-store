class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, unique: true
      t.bigint :books_count, default: 0, null: false

      t.timestamps
    end
  end
end
