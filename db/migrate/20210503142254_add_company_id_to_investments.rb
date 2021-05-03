class AddCompanyIdToInvestments < ActiveRecord::Migration[6.1]
  def change
    add_column :investments, :company_id, :integer
    add_index :investments, :company_id
  end
end
