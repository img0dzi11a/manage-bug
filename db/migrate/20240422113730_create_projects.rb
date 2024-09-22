class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.text :name
      t.integer :manager_id
      t.timestamps
    end
  end
end
