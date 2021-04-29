class AddAccountIdToMoves < ActiveRecord::Migration[6.1]
  def change
    add_column :moves, :account_id, :integer
    add_index :moves, :account_id
  end
end
