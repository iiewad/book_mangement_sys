class AddBookIdToBorrows < ActiveRecord::Migration[5.2]
  def change
    add_column :borrows, :book_id, :integer, comment: "Book ID"
  end
end
