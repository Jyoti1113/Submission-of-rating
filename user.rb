class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: { minimum: 20, maximum: 60 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :address, presence: true, length: { maximum: 400 }
  validates :password, presence: true, length: { minimum: 8, maximum: 16 }, format: { with: /(?=.*[A-Z])(?=.*[\W_])/, message: "must include at least one uppercase letter and one special character" }

  has_many :ratings
end
