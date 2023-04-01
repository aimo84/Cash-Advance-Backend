class DatumSerializer < ActiveModel::Serializer
  attributes :id, :fullName, :email, :phone, :businessHistory, :businessLocation
end
