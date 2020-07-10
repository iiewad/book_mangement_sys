class CreateBorrows < ActiveRecord::Migration[5.2]
  def change
    create_table :borrows do |t|
      t.string :isbn
      t.string :user_no
      t.date :borrow_date
      t.date :return_date
      t.string :remark

      t.timestamps
    end
  end
end
