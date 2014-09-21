class CreateTables < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zipcode, null: false
      t.string :description
      t.string :category

      t.timestamps
    end

    create_table :reviews do |t|
      t.integer :rating, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
