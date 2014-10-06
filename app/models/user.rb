class User < ActiveRecord::Base

  belongs_to :company  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
	 :omniauthable, :omniauth_providers => [ :amazon, :facebook, :google_apps, :google_oauth2]

  def self.find_for_facebook_oauth(auth)
    where(auth.slice( :provider, :uid)).first_or_create do |user|
	user.provider = auth.provider
	user.uid = auth.uid
	user.email = auth.info.email
	user.password = Devise.friendly_token[0,20]
	user.name = auth.info.name
	user.image = auth.info.image
    end
  end

end
