class Project < ApplicationRecord
  belongs_to :parent_project, class_name: 'Project', optional: true
  has_many :organizations_projects
  has_many :organizations, through: :organizations_projects

  has_many :sub_projects, class_name: 'Project', foreign_key: 'parent_project_id'
  #belongs_to :parent, class_name: 'Project', optional: true


  has_many :Project_spaces, dependent: :destroy
  has_many :project_items, through: :project_spaces

end
