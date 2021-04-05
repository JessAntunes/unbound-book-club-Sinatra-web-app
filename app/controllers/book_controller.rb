require './config/environment'

class BookController < ApplicationController

    get '/books' do
        erb :display_books
    end

    get "/books/new" do
        erb :new_book
    end

    get '/books/:id' do
        @book = Book.find(params[:id])
        erb :book
    end

    post "/books" do
        @book = Book.new
        @book.title = params[:title]
        @book.author = params[:author]
        @book.read = params[:read]
        @book.save
       redirect "/books/#{@book.id}"
    end

end