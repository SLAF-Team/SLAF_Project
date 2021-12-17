class Idiom < ApplicationRecord
  before_create :default_likes
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :unlikes, dependent: :destroy

  validates :title_en, presence: true, length: { minimum: 2, maximum: 50 }
  validates :title_fr, presence: true, length: { minimum: 2, maximum: 50 }
  validates :grammatical_type, presence: true
  validates :body, presence: true, length: { minimum: 15, maximum: 300 }
  validates :example_fr, presence: true, length: { minimum: 15, maximum: 200 }
  validates :example_en, presence: true, length: { minimum: 15, maximum: 200 }
  validates :user, presence: true

  def self.search_by(search)
    @all_letters = [*'A'..'Z']
    if search.blank?
      all
    elsif search == 'top'
      order('likes_count DESC')
    elsif @all_letters.include?(search)
      where('title_en ILIKE ?', "#{search}%")
    else
      where('title_en ILIKE ?', "%#{search}%")
    end
  end

  def default_likes
    self.likes_count = 0
  end
end
