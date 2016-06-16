class AddAttachmentUploadToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.change :upload_file_name, :original_filename
      t.change :upload_content_type, :content_type
     
    end
  end
  def self.down
    
    end
  end

