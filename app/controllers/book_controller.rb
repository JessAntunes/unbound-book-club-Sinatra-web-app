require './config/environment'

class BookController < Sinatra::Base

    get "/books/new" do
        erb :"/views/new_book"
    end

    post "/books/:id"
        @book = Book.new(params[:title])
        erb :'/view/book'
    end

end