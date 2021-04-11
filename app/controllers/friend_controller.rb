class FriendController < ApplicationController

    get '/friends' do
        @user = current_user
        erb :'friend/all_friends'
    end

    get '/friends/new' do
        @user = current_user
        erb :'friend/new'
    end
    
    get '/friends/:friend_id' do
        @user = current_user
        if Friend.find_by(user_id: params[:friend_id], friend_id: @user.id)
            @friend = User.find(params[:friend_id])
            erb :'friend/index'
        else 
            redirect '/notfriends'
        end
    end

    get "/friends/:friend_id/library" do
        @user = current_user
        if Friend.find_by(user_id: params[:friend_id], friend_id: @user.id)
            @friend = User.find(params[:friend_id])
            erb :'friend/library_index'
        else 
            redirect '/notfriends'
        end
    end

    get "/friends/:friend_id/lists" do
        @user = current_user
        if Friend.find_by(user_id: params[:friend_id], friend_id: @user.id)
            @friend = User.find(params[:friend_id])
            erb :'friend/list_index'
        else 
            redirect '/notfriends'
        end
    end

    post '/friends' do 
        @user = current_user
        if friend = User.find_by(username: params[:username])
            @friend = create(user_id: @user.id, friend_id: friend.id)
            redirect "/friends/#{@friend.id}"
        else
            redirect '/nomatch'
        end
    end

    delete '/friends/:friend_id' do 
        @user = current_user
        @friend = Friend.find_by(user_id: @user.id, friend_id: params[:friend_id])
        @friend.delete
        redirect to '/friends'
    end

    get '/notfriends'
        erb :'friend/not_friends'
    end

    get '/nomatch'
        erb :'friend/no_match'
    end
 
end