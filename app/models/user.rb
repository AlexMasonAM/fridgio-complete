class User < ActiveRecord::Base

  validates_presence_of :username, :name, :email
  has_secure_password
  
end
