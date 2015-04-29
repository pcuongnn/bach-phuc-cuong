class AddImpressionsCountToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :impressions_count, :integer, default: 0
  end
end
