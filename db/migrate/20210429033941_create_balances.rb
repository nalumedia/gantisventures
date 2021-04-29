class CreateBalances < ActiveRecord::Migration[6.1]
  def change
    create_table :balances do |t|
      t.string :name
      t.integer :account_id
      t.integer :amount
      t.text :notes

      t.timestamps
    end
  end
end
