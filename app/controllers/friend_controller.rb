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

    post '/friends' do 
        @user = current_user
        friend = User.find_by(username: params[:username])
        @friend = create(user_id: @user.id, friend_id: friend.id)
        redirect "/friends/#{@friend.id}"
    end

    get '/notfriends'
        erb :'friend/not_friends'
    end

end