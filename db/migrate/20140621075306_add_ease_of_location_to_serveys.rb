class AddEaseOfLocationToServeys < ActiveRecord::Migration
  def change
    add_column :serveys, :ease_of_location, :string
  end
end
