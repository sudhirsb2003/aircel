class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.string :name
      t.string :tab_code
      t.string :pincode
      t.string :mac_address

      t.timestamps
    end
  end
end
