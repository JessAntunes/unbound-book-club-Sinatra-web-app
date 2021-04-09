class User < ActiveRecord::Base
   has_secure_password
   has_one :library
   has_many :books, through: :library


end