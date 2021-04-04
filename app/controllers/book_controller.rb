require './config/environment'

class BookController < Sinatra::Base

    get "/newbook" do
        @book = Book.new(params[:title])
        erb :newbook
    end

    post "/newbook"
        @book = Book.new(params[:title])
        erb "/book/:id"
    end

end