class Category < ApplicationRecord
  has_many :books, counter_cache: true
end
