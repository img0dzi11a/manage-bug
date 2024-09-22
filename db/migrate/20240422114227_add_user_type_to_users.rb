class AddUserTypeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :user_type, :string, default: 0, null: false
  end
end
