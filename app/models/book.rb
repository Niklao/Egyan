class Book < ActiveRecord::Base
  mount_uploader :image, UploadexUploader
  validates :author_id , presence: true
end
