class AddUserNoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_no, :string
  end
end
