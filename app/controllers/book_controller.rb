require './config/environment'

class BookController < Sinatra::Base

    get "/book/new" do
        erb :"/views/new_book"
    end

    post "/book/:id"
        @book = Book.new(params[:title])
        erb :'/view/book'
    end

end