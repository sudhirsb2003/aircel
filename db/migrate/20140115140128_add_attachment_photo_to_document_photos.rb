class AddAttachmentPhotoToDocumentPhotos < ActiveRecord::Migration
  def self.up
    change_table :document_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :document_photos, :photo
  end
end
