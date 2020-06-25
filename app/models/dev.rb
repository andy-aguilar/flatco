class Dev < ApplicationRecord
    has_many :devprojects
    has_many :projects, through: :devprojects
end
