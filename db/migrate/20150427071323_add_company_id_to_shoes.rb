class AddCompanyIdToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :company_id, :integer
  end
end
