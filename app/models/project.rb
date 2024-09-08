class Project < ApplicationRecord
  belongs_to :organization, through: :organizations_projects
  has_many :Project_spaces, dependent: :destroy
  has_many :project_items, through: :project_spaces

end
