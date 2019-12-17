class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6 }

  def self.authentication(email, password)
    @user = self.where("lower(email) = ?", email.delete(' ').downcase).first.try(:authenticate, password)
  end
end