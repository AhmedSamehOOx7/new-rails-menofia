class User < ApplicationRecord
  validates :name, :dob, :email, :phone, presence: true

  # Email format validation
  validates :email,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            uniqueness: true
end
