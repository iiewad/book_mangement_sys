class AddBorrowPriceToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :borrow_price, :decimal, default: 0.0, null: false, comment: "Borrow Price"
  end
end
