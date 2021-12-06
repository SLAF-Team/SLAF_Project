class Comment < ApplicationRecord
    belongs_to :idiom
    belongs_to :user
end
