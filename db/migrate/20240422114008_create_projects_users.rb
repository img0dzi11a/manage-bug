class CreateProjectsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :projects_users do |t|
      t.integer :project_id
      t.integer :user_id
      t.timestamps
    end
  end
end
