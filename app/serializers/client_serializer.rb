class ClientSerializer < ActiveModel::Serializer
  attributes :id, :fullName, :email, :phone, :age, :gender, :loanAmount, :businessHistory, :businessLocation
end
