class RemoveAccountIdFromMoves < ActiveRecord::Migration[6.1]
  def change
    remove_column :moves, :account_id, :integer
  end
end
