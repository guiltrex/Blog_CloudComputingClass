class User < ActiveRecord::Base
  attr_accessible :username,  :password, :password_confirmation
  has_many :posts
  has_many :comments
  
  validates :password_digest, presence:true
  validates :username, presence:true, uniqueness:true
  has_secure_password
end
