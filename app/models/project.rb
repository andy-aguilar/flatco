class Project < ApplicationRecord
    has_many :devprojects
    has_many :devs, through: :devprojects

    def self.name
        self.all.map do |project|
            project.name
        end
    end
end
