class FixColumnName < ActiveRecord::Migration
  def change
    
     rename_column :images, :upload_file_name, :original_filename
     rename_column :images, :upload_content_type, :content_type
      
  end
end
