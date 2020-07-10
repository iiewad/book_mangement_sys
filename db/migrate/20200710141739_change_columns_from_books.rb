class ChangeColumnsFromBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :title, :string
    rename_column :books, :publish_house, :publisher
  end
end
