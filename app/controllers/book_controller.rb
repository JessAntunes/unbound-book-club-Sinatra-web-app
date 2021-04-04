require './config/environment'

class BookController < Sinatra::Base

    get "/newbook" do
        @book = Book.new(params[:title])
        erb :book
    end

    post "/newbook"
        @book = Book.new(params[:title])
        redirect "/book/:id"
    end

end