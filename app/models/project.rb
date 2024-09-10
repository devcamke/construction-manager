class Project < ApplicationRecord
  has_many :organizations_projects
  has_many :organization, through: :organizations_projects

  has_many :sub_projects, class_name: 'Project', foreign_key: 'parent_id'
  #belongs_to :parent, class_name: 'Project', optional: true


  has_many :Project_spaces, dependent: :destroy
  has_many :project_items, through: :project_spaces

end
