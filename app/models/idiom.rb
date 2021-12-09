class Idiom < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :unlikes, :dependent => :destroy

    def self.search_by(search)
        if search.blank?
            all
        #pour les tops
        # elsif params[:search] == 1
        else
            where('title_en LIKE ?', "%#{search}%")
        end
    end

end
