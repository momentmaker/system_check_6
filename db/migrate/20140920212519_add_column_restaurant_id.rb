class AddColumnRestaurantId < ActiveRecord::Migration
  def change
    add_column :reviews, :restaurant_id, :integer, null: false
  end
end
