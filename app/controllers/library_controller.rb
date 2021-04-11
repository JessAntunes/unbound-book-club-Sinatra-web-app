

class LibraryController < ApplicationController

    get '/library' do
        @user = current_user
        erb :'library/index'
    end

    get '/library/:book_id'
        @user = current_user
        @book = find(params[:book_id])
        @library = Library.find_by(user_id: @user.id, book_id: @book._id) 
        erb :'library/show'
    end



end