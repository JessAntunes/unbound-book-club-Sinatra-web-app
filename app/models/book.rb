class Book < ActiveRecord::Base
    has_many :libraries
    has_many :lists
   


end