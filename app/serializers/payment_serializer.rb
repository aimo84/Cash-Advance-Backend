class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :amount, :fullName, :payment_means
end
