class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :email, :userType
end
