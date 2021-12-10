class User < ApplicationRecord
    after_create :welcome_send
    before_create :aliases_attribution
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable,
            :omniauthable, omniauth_providers: [:facebook, :google_oauth2]


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

    def self.create_from_provider_data(provider_data)
        where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
            user.email = provider_data.info.email
            user.password = Devise.friendly_token[0, 20]
        end
    end
end
