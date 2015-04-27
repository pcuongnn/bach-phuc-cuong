class AddCategoryIdToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :category_id, :integer
  end
end
