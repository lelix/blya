class User < ActiveRecord::Base
  # attr_accessible :first_name, :last_name, :email, :password_digest

  validates :email, :uniqueness => true
  
  has_secure_password
  #validates :password, length: { minimum: 6 }
end
