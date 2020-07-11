class ChangeBalanceInAccounts < ActiveRecord::Migration[5.2]
  def change
    change_column :accounts, :balance, :decimal, default: 0.0
  end
end
