class User < ApplicationRecord
  has_secure_password

  has_one :host_application
  has_many :listings, dependent: :delete_all

  validates_presence_of :email
  validates_uniqueness_of :email
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :first_name, presence: true, length: { in: 2..30 }
  validates :last_name, presence: true, length: { in: 2..30 }
end
