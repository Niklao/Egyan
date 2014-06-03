class Book < ActiveRecord::Base
  validates :author_id , presence: true
end
