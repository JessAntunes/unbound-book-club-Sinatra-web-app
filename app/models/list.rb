class List < ActiveRecord::Base
   belongs_to :user
   belongs_to :book

   def books(user_id, list_name) 
      List.all.map do |l|
         if l.user_id == user_id && l.name == list_name
            Book.find(l.book_id)
         end
      end
   end


end