class LoanSerializer < ActiveModel::Serializer
  attributes :id, :fullName, :loanAmount, :interestRate, :loanTenure, :loanStatus, :loanDisbursed
end
