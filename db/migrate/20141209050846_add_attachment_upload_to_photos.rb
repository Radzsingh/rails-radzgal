class AddAttachmentUploadToPhotos < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      
         end
  end

  def self.down
    remove_attachment :images, :upload
  end
end
