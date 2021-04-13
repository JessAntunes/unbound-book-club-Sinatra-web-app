

class ListController < ApplicationController

    get '/lists' do
        @user = current_user
        erb :'list/index'
    end

    get '/lists/new' do
        @user = current_user
        erb :'list/new'
    end

    get 'lists/:list_id' do
        @user = current_user
        @list = List.find(params[:list_id])
        erb :'list/show'
    end

    post '/lists' do
        @book = Book.find_or_create_by(title: params[:title], author: params[:author])
        @list = List.create(user_id: current_user.id, book_id: @book.id, name: params[:name])
        @book.update(read: params[:read], notes: params[:notes])
        redirect '/lists/#{@list.id}'
    end

    delete '/lists/:list_id' do
        list.find(params[:list_id])
        list.delete
        redirect '/lists'
    end

end