class User < ApplicationRecord
    after_create :welcome_send
    before_create :aliases_attribution
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
    

    has_one_attached :avatar

    has_many :idioms, :dependent => :destroy
    has_many :comments, :dependent => :destroy
    has_many :likes, :dependent => :destroy
    has_many :unlikes, :dependent => :destroy

    def welcome_send
        UserMailer.welcome_email(self).deliver_now
    end

    def aliases_attribution
        self.alias = "disrupt-#{SecureRandom.hex(2)}"
        self.avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', "avatar-1.jpeg")), filename: "avatar-1.jpeg", content_type: 'image/jpeg')
    end
end
