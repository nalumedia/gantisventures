class RemoveAccountidFromBalances < ActiveRecord::Migration[6.1]
  def change
    remove_column :balances, :account_id, :integer
  end
end
