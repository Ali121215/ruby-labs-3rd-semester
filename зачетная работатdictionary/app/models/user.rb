class User < ApplicationRecord
    has_many :translations
    has_many :middles
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
    validates :password, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 100 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
end
