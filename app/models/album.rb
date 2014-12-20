class Album < ActiveRecord::Base
  validates :album_name, presence: true,
                    length: { minimum: 5 }
  belongs_to :user
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true
end
