class FixColumnName11 < ActiveRecord::Migration
  def change
    
    rename_column :images, :original_filename, :imageval_file_name
    rename_column :images, :content_type, :imageval_content_type
    rename_column :images, :upload_file_size, :imageval_file_size
    rename_column :images, :upload_updated_at, :imageval_updated_at
  
  end
end
