class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :uuid, null: false, comment: "UUID"
      t.integer :user_id, null: false, comment: "ForeignKey user_id"
      t.string :balance, null: false, default: "0.0", comment: "Balance"

      t.timestamps
    end
  end
end
