class AddActivationCodeAndDistCodeAndChannelToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :caf_number, :string
    add_column :customers, :activation_code, :string
    add_column :customers, :dist_code, :string
    add_column :customers, :channel_string, :string
  end
end
