class RemoveUserNoFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user_no
  end
end
