class User < ActiveRecord::Base
  has_many :drinks
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  def self.find_for_facebook_oauth(auth)
	where(auth.slice(:provider, :uid)).first_or_create do |user|
	  user.provider = auth.provider
	  user.uid = auth.uid
	  user.email = auth.info.email
	  user.password = Devise.friendly_token[0,20]
	  user.name = auth.info.name   # assuming the user model has a name
	end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end


end
