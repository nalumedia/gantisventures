class CreateMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :amount
      t.text :notes
      t.integer :account_id

      t.timestamps
    end
  end
end
