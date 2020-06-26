class Dev < ApplicationRecord
    has_many :dev_projects
    has_many :projects, through: :dev_projects


    def self.company(company_name)
        Dev.where(workplace: company_name)
    end
end
