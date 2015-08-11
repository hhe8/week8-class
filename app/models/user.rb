class User < ActiveRecord::Base

  validates :name, :email, :password, presence: true
  validates :password, confirmation: true
  
end
