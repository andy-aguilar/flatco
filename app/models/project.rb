class Project < ApplicationRecord
    has_many :dev_projects
    has_many :devs, through: :dev_projects

   
end
