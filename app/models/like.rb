class Like < ApplicationRecord
  belongs_to :user
  belongs_to :idiom, counter_cache: true
end
