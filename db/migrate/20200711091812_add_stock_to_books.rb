class AddStockToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :stock, :integer, default: 0, null: false, comment: "Stock"
  end
end
