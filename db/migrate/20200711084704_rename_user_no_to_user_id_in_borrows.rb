class RenameUserNoToUserIdInBorrows < ActiveRecord::Migration[5.2]
  def change
    rename_column :borrows, :user_no, :user_id
    change_column :borrows, :user_id, :integer
  end
end
