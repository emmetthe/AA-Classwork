class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :email, :username
    remove_column :users, :name
  end
end
