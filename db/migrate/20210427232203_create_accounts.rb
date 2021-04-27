class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :nameLstring
      t.string :type
      t.string :horizon
      t.string :target_exit
      t.text :notes

      t.timestamps
    end
  end
end
