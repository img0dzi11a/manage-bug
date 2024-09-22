class Project < ApplicationRecord
    validates :name,
    presence: true, #name cant be empty
    length: {maximum: 30}, #length cannot exceed 30 characters
    uniqueness: true
    validates :manager_id, presence: true

    belongs_to :manager, class_name: "User"
    has_many :project_users
    has_many :users, through: :project_users #many to many association
    has_many :bugs
end