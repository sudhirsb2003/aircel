class AddTabIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tab_id, :integer
  end
end
