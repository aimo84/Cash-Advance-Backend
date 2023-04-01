class User < ApplicationRecord
    has_secure_password

    validates :fullname, :email, :password_digest, :userType, presence: true
    validates :email, uniqueness: true
    validates :fullname, presence: true, format: { with: /\A[a-zA-Z]+\s[a-zA-Z]+\z/, message: "must include first and last name" }
    validates :password_digest, length: { minimum: 6 }
end
