class AddSlugToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :slug, :string
  end
end
