class AddAccountIdToBalances < ActiveRecord::Migration[6.1]
  def change
    add_column :balances, :account_id, :integer
    add_index :balances, :account_id
  end
end
