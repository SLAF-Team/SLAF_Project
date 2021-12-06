class User < ApplicationRecord
    has_many :idioms
    has_many :comments
    has_many :likes
end
