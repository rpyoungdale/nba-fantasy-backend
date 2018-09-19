class User < ApplicationRecord
  has_one :team, required: false
  has_secure_password
end
