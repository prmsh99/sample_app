class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :encrypted_password
  	remove_column :users, :salt
  end
end
