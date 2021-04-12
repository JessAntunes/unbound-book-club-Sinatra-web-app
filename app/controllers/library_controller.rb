

class LibraryController < ApplicationController

    get '/library' do
        @user = current_user
        erb :'library/index'
    end

    get '/library/new' do
        @user = current_user
        erb :'library/new'
    end

    get '/library/:book_id' do
        @user = current_user
        @book = Book.find(params[:book_id])
        @library = Library.find_by(user_id: @user.id, book_id: @book_id) 
        erb :'library/show'
    end

    post '/library' do
        @book = Book.find_or_create_by(title: params[:title], author: params[:author])
        @library = create(user_id: current_user.id, book_id: @book.id, read: params[:read], notes: params[:notes])
        redirect '/library/#{@book.id}'
    end

    get '/library/:book_id/edit' do
        erb :'library/edit'
    end

    patch '/library/:book_id' do
        @library = Library.find_by(user_id: current_user.id, book_id: params[:book_id])
        @library.update(read: params[:read], notes: params[:notes])
        redirect '/library/#{book.id}'
    end

    delete '/library/:book_id' do
        @library.delete
        redirect '/library'
    end


end