class CreateUser < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.text :name, default: "", null: false
      t.text :phone, default: "", null: false
      t.timestamps
    end
  end
end
