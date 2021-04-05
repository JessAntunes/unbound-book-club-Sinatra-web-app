require './config/environment'

class BookController < Sinatra::Base

    get "/book/new" do
        @book = Book.new(params[:title])
        erb :new_book
    end

    post "/book/:id"
        @book = Book.new(params[:title])
        erb "/book/:id"
    end

end