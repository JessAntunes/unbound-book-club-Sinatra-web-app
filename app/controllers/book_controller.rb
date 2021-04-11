

class BookController < ApplicationController

    get '/books' do
        @books = Book.all
        erb :'book/index'
      end 
    
      get '/books/new' do 
        user = current_user
        if user.logged_in?
          erb :'book/new'
        else
          redirect '/login'
        end
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
        user = current_user
        if user.logged_in?
          @book = Book.find_by_id(params[:id])
          erb :'book/edit'
        else
          redirect '/login'
        end
        
      end 
    
      patch '/books/:id' do 
        @book = Book.find(params[:id])
        @book.update(params)
        redirect to "/books/#{@book.id}"
      end
      
    
end