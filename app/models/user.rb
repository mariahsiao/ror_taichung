  class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include Gravtastic
  gravtastic

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable,
         :omniauthable, :omniauth_providers => [:facebook,:google_oauth2,:github]

  has_many :profiles
  has_many :images
  has_one :user_photo, dependent: :destroy
  accepts_nested_attributes_for :user_photo


  has_many :user_events
  has_many :participated_events, through: :user_events, source: :event
  has_many :events

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.skip_confirmation!
      user.save!
    end
  end

  def join!(event)
    participated_events << event
  end

  def quit!(event)
    participated_events.delete(event)
  end

  def is_member_of?(event)
    participated_events.include?(event)
  end

  def editable_by?(user, current_user)
    user && user == current_user
  end

end
