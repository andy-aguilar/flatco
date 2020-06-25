class Dev < ApplicationRecord
    has_many :dev_projects
    has_many :projects, through: :dev_projects
end
