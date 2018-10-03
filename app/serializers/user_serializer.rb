class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :team

  has_one :team
end
