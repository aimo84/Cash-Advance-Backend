class Client < ApplicationRecord

    validates_presence_of :fullName, :email, :phone, :age, :gender, :loanAmount, :businessHistory, :businessLocation
    validates :fullName, presence: true, format: { with: /\A[a-zA-Z]+\s[a-zA-Z]+\z/, message: "must include first and last name" }
    validates :age, numericality: { greater_than_or_equal_to: 18 }
    validates :gender, inclusion: { in: ["Male", "Female", "Other"] }
    validates :loanAmount, presence: true, numericality: { greater_than: 0 }

end
