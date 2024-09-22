class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    has_many :project_users
    has_many :assigned_projects, class_name: "Project", through: :project_users, source: :project
    has_many :managed_projects, class_name: "Project", foreign_key: "manager_id"
  end
  