class AddAmountToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :amount, :decimal
  end
end
