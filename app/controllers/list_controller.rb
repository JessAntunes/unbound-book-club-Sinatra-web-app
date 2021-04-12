

class ListController < ApplicationController

    get '/lists' do
        @user = current_user
        erb :'list/index'
    end

    get 'lists/:list_id' do
        @user = current_user
        @lists = List.find(params[:list_id])
        erb :'list/show'
    end

end