class User < ActiveRecord::Base
  validates :email_id , uniqueness: true
  validates :email_id, presence: true
  
  
  
  
  
  def self.authenticate( email , password ) 
    user=User.find_by( email_id: "#{email}" ) 
    if user
      if user.password == password
        user.email_id
      else 
        nil
      end
    else
      nil
    end
  end
  
  def self.get_user( email ) 
    user=User.find_by(email_id: "#{email}" ) 
    email=user.first_name
    return email
  end

end
