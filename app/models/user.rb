class User < ApplicationRecord
  has_many :organization_users
  has_many :organization, through: :organizations_users
end
