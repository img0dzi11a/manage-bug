class CreateBugs < ActiveRecord::Migration[7.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.integer :bug_type, default: 0
      t.integer :status, default: 0
      t.integer :project_id
      t.integer :developer_id
      t.integer :qa_id
      t.timestamps
    end
  end
end
