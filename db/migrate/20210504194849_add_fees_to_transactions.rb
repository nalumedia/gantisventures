class AddFeesToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :fees, :integer
  end
end
