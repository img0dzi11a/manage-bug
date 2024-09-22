class RenameUsersProjects < ActiveRecord::Migration[7.1]
  def change
    rename_table :projects_users, :project_users
  end
end
