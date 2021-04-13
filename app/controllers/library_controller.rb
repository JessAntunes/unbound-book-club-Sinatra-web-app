

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
        erb :'library/show'
    end

    post '/library' do
        @book = Book.find_or_create_by(title: params[:title], author: params[:author])
        @library = Library.create(user_id: current_user.id, book_id: @book.id)
        @book.update(read: params[:read], notes: params[:notes])
        redirect '/library/#{@book.id}'
    end

    get '/library/:book_id/edit' do
        @book = Book.find(params[:book_id])
        erb :'library/edit'
    end

    patch '/library/:book_id' do
        book = Book.find(params[:book_id])
        book.update(params)
        redirect '/library/#{book.id}'
    end

    delete '/library' do
        current_user.books.destroy
        redirect '/library'
    end

    delete '/library/:book_id' do
        book = current_user.books.where(params[:book_id])
        book.destroy
        redirect '/library'
    end



end