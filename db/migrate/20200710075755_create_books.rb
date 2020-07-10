class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :isbn, null: false, comment: "ISBN"
      t.string :author, null: false, default: "unknown", comment: "Author"
      t.string :publish_house, null: false, default: "unknown", comment: "Publish House"
      t.string :intro, comment: "Intro"
      t.string :remark, comment: "Remark"
      t.datetime :publish_date, null: false, comment: "Publish Date"

      t.timestamps
    end
  end
end
