class RemoveUuidFromAccounts < ActiveRecord::Migration[5.2]
  def change
    remove_column :accounts, :uuid
  end
end
