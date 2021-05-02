class AddFromAccountIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :account_from_id, :integer
    add_index :transactions, :account_from_id
  end
end
