class Organization < ApplicationRecord
  has_many :organizations_users
  has_many :users, through: :organizations_users
  has_many :projects_users
  has_many :projects, through: :projects_users
end
