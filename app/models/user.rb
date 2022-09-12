class User < ApplicationRecord
  validates :username, length: { minimum: 3 }
  validates :email, format: { with: URI::MailTo:EMAIL_REGEXP }
  validates :password, length: { minimum: 8 }
end
