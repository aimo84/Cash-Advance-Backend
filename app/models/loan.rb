class Loan < ApplicationRecord

    validates :fullName, presence: true, format: { with: /\A[a-zA-Z]+\s[a-zA-Z]+\z/, message: "must include first and last name" }
    validates :loanAmount, numericality: { greater_than_or_equal_to: 7000, message: "must be at least 7000" }
    validates :interestRate, presence: true, numericality: { equal_to: 3.0 }
    validates :loanTenure, presence: true, numericality: { equal_to: 2 }
end
