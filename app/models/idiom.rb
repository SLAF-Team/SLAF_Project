class Idiom < ApplicationRecord
    before_create :default_likes
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :unlikes, :dependent => :destroy

    validates :title_en, presence: true, length: { minimum: 2, maximum: 50 }
    validates :title_fr, presence: true, length: { minimum: 2, maximum: 50 }
    validates :grammatical_type, presence: true
    validates :body, presence: true, length: { minimum: 15, maximum: 140 }
    validates :example, presence: true, length: { minimum: 15, maximum: 140 }
    validates :user, presence: true
    
    def self.search_by(search)
        if search.blank?
            all
        elsif search == "top"
            order("likes_count DESC")
        else
            where('title_en LIKE ?', "%#{search}%")
        end
    end

    def default_likes
        self.likes_count = 0
    end
end
