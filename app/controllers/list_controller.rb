

class ListController < ApplicationController

    get '/lists' do
        @user = current_user
        erb :'list/index'
    end

    get '/lists/new' do
        @user = current_user
        erb :'list/new'
    end

    get '/lists/:id/new' do
        @user = current_user
        @list = List.find(params[:id])
        erb :'list/add_book'
    end

    get '/lists/:id' do
        # binding.pry
        @user = current_user
        @list = List.find(params[:id])
        erb :'list/show'
    end

    post '/lists' do
        @book = Book.find_or_create_by(title: params[:title], author: params[:author])
        @list = List.create(user_id: current_user.id, book_id: @book.id, name: params[:name])
        @book.update(read: params[:read], notes: params[:notes])
        redirect '/lists/#{@list.id}'
    end

    post '/lists/:id' do
        book = Book.find_or_create_by(title: params[:title], author: params[:author])
        list = List.find(params[:id])
        List.create(user_id: current_user.id, book_id: book.id, name: list.name)
        @book.update(read: params[:read], notes: params[:notes])
        redirect '/lists/#{@list.id}'
    end

    delete '/lists/:id' do
        list.find(params[:id])
        list.delete
        redirect '/lists'
    end

end