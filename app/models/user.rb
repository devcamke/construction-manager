class User < ApplicationRecord
  belongs_to :organization, through: :organizations_users, optional: true
end
