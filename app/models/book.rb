class Book < ActiveRecord::Base
	mount_uploader :image, UploadexUploader
	
	def self.findid( id ) 
    if book=Book.find_by(id: "#{id}" )
    	return book 
		else    
    return nil
    end
  end
  def self.bookf( id ) 
    if book=Book.find_by(id: "#{id}" )
    	return book 
		else    
    return nil
    end
  end
end
