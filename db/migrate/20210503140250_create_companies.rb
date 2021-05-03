class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.text :notes
      t.text :about

      t.timestamps
    end
  end
end
