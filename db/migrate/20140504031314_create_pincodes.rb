class CreatePincodes < ActiveRecord::Migration
  def change
    create_table :pincodes do |t|
      t.string :name
      t.string :pin_number
      t.string :city
      t.integer :city_id
      t.integer :zone_id

      t.timestamps
    end
  end
end
