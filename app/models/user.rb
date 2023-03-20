class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  validates_presence_of :email
  validates_uniqueness_of :email
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true

  before_save { self.email = email.downcase }

  def generate_jwt
    JWT.encode({id: id,
                exp: 60.days.from_now.to_i},
      Rails.application.secrets.secret_key_base)
  end
end
