class Idiom < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    def self.by_letter(letter)
        if letter.blank?  #covers both nil and empty string
            all
        else
            where('title_en LIKE ?', "%#{letter}%")
        end
    end

end
