class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.integer :investment_amount
      t.integer :fees
      t.text :fee_notes
      t.text :terms
      t.integer :pre_money
      t.integer :post_money
      t.integer :target_exit
      t.text :target_exit_notes
      t.decimal :ownership
      t.text :notes
      t.integer :source_id
      t.string :round
      t.string :security_type

      t.timestamps
    end
    add_index :investments, :source_id
  end
end
