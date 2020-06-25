class Project < ApplicationRecord
    has_many :devprojects
    has_many :devs, through: :devprojects
end
