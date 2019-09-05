class User < ActiveRecord::Base 
  has_many :events 
  belongs_to :household 
  has_secure_password 

end 