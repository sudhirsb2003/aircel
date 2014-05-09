class AddZoneIdToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :zone_id, :integer
  end
end
