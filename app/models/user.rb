class User < ActiveRecord::Base
  validates :email, uniqueness: true
  has_secure_password
  
  #validates :password, length: { minimum: 6 }  
end
