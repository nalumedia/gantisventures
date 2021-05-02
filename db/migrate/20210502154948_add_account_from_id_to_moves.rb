class AddAccountFromIdToMoves < ActiveRecord::Migration[6.1]
  def change
    add_column :moves, :account_from_id, :integer
    add_index :moves, :account_from_id
  end
end
