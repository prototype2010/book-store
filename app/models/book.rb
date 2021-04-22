class Book < ApplicationRecord
  include SortHelper

  has_and_belongs_to_many :authors
  belongs_to :category, counter_cache: :books_count

  scope :by_category, lambda { |category_name|
    category = Category.find_by(name: category_name)

    where(category_id: category.id) if category
  }

  scope :use_sort, lambda { |sort_info|
    order("#{sort_info[:sort]}  #{sort_info[:direction]}")
  }
end
