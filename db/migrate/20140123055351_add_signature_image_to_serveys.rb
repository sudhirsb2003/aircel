class AddSignatureImageToServeys < ActiveRecord::Migration
  def change
    add_column :serveys, :signature_image, :string
  end
end
