require 'openssl'

class User < ApplicationRecord
  ITERATIONS = 20_000
  DIGEST = OpenSSL::Digest::SHA256.new
  EMAIL_REGEXP = /\A.+@.+\z/
  USERNAME_REGEXP = /\A\w+\z/
  AVATAR_COLOR_REGEXP = /\A\#[a-fA-F0-9]{6}\z/

  attr_accessor :password

  has_many :questions, dependent: :destroy

  validates :username,  presence: true,
                        uniqueness: true,
                        format: { with: USERNAME_REGEXP },
                        length: { maximum: 40 }

  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: EMAIL_REGEXP }

  validates :password,  presence: true, on: :create,
                        confirmation: true

  validates :avatar_color, format: { with: AVATAR_COLOR_REGEXP }

  before_save :encrypt_password
  before_validation :downcase_values!

  def self.hash_to_string(password_hash)
    password_hash.unpack('H*')[0]
  end

  def self.authenticate(email, password)
    user = find_by(email: email)
    return nil unless user.present?

    hashed_password = User.hash_to_string(
      OpenSSL::PKCS5.pbkdf2_hmac(
        password, user.password_salt, ITERATIONS, DIGEST.length, DIGEST
      )
    )
    return user if user.password_hash == hashed_password

    nil
  end

  private

  def encrypt_password
    if password.present?
      self.password_salt = User.hash_to_string(OpenSSL::Random.random_bytes(16))
      self.password_hash = User.hash_to_string(
        OpenSSL::PKCS5.pbkdf2_hmac(
          password, password_salt, ITERATIONS, DIGEST.length, DIGEST
        )
      )
    end
  end

  def downcase_values!
    username&.downcase!
    email&.downcase!
  end
end
