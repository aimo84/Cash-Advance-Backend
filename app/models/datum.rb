class Datum < ApplicationRecord
    validates_presence_of :fullName, :email, :phone, :businessHistory, :businessLocation
    validates :fullName, presence: true, format: { with: /\A[a-zA-Z]+\s[a-zA-Z]+\z/, message: "must include first and last name" }
end
