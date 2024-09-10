class User < ApplicationRecord
  has_many :organization_users
  has_many :organizations, through: :organizations_users
end
