class User < ActiveRecord::Base
   has_many :libraries
   has_many :books through: :libraries


end