require 'paperclip'

class Image < ActiveRecord::Base
  
  
  belongs_to :album
  
  has_attached_file :imageval, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :imageval, :content_type => /\Aimage\/.*\Z/
                    
end
