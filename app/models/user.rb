class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :username,           presence: true
  validates :email,              presence: true, uniqueness: true

  VALID_EMAIL_REGEX = /[\w\-\._]+@[\w\-\._]+\.[A-Za-z]+/
  validates :email, format: { with: VALID_EMAIL_REGEX}
  
end
