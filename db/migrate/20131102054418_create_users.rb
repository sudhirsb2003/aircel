class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name , :unique => true
      t.text :address
      t.string :employee_uid , :unique => true , :nill => false

      t.timestamps
    end
  end
end
