require './config/environment'

class BookController < ApplicationController

    get '/books' do
        @books = Book.all
        erb :'book/index'
      end 
    
      get '/books/new' do 
        erb :'book/new'
      end
    
      post '/books' do 
        @book = Book.create(params)
        redirect "/books/#{@book.id}"
      end
    
      get '/books/:id' do 
        @book = Book.find_by_id(params[:id])
        erb :'book/show'
      end 
    
      get '/books/:id/edit' do 
        @book = Book.find_by_id(params[:id])
        erb :'book/edit'
      end 
    
      patch '/books/:id' do 
        @book = Book.find(params[:id])
        @book.update(params)
        redirect to "/books/#{@book.id}"
      end
    
      delete '/books/:id' do 
        @book = Book.find_by_id(params[:id])
        @book.delete
        redirect to '/books'
      end

    

end