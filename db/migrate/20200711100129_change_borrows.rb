class ChangeBorrows < ActiveRecord::Migration[5.2]
  def change
    change_column :borrows, :borrow_date, :timestamps
    change_column :borrows, :return_date, :timestamps
  end
end
