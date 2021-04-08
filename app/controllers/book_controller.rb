require './config/environment'

class BookController < ApplicationController

    get '/books' do
        erb :"/Book/display_books"
    end

    post "/books" do
        book = Book.create(params)
        redirect "/books/#{@book.id}"
    end

    get "/books/new" do
        erb :"/Book/new_book"
    end

    get '/books/:id' do
        book = Book.find(params[:id])
        erb :"/Book/book"
    end

    

end