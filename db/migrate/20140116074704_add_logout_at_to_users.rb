class AddLogoutAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :logout_at, :timestamp
  end
end
