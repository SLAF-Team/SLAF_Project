class User < ApplicationRecord
    after_create :welcome_send
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
    

    has_one_attached :avatar
    has_many :idioms
    has_many :comments
    has_many :likes, dependent: :destroy


    def welcome_send
        UserMailer.welcome_email(self).deliver_now
    end
end
