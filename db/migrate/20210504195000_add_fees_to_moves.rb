class AddFeesToMoves < ActiveRecord::Migration[6.1]
  def change
    add_column :moves, :fees, :integer
  end
end
