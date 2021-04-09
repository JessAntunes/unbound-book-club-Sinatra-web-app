class User < ActiveRecord::Base
   has_one :library
   has_many :books, through: :libraries


end