class Book < ActiveRecord::Base
	mount_uploader :image, UploadexUploader
	
	def self.my_book( email ) 
    books=Book.where( author_id: "#{email}" ) 
    return books
  end
	
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
