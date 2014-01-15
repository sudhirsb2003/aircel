class CreateDocumentPhotos < ActiveRecord::Migration
  def change
    create_table :document_photos do |t|
      t.string :servey_id

      t.timestamps
    end
  end
end
