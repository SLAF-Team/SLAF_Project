class Idiom < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    scope :by_letter,
        lambda { |letter| {
            :conditions => ["idioms.title_eng LIKE ?", "#{letter}%"]
        }}
end
