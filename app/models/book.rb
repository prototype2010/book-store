class Book < ApplicationRecord
  include SortHelper

  has_and_belongs_to_many :authors
  belongs_to :category,  counter_cache: :books_count

  scope :by_category, -> (category_name) do
    category = Category.find_by_name(category_name)

    where(category_id: category.id) if category
  end

  scope :use_sort, -> (sort_info) do
    order("#{sort_info[:sort]}  #{sort_info[:direction]}")
  end
end
