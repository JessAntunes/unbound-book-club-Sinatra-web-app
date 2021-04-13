class FriendController < ApplicationController

    get '/friends' do             #this route works
        @user = current_user
        erb :'friend/all_friends'
    end

    get '/friends/new' do       #this route works
        @user = current_user
        erb :'friend/new'
    end

    post '/friends' do        #this route works
        @user = current_user
        if friend = User.find_by(username: params[:username])
            @friend = Friend.create(user_id: @user.id, friend_id: friend.id)
            redirect "/friends"
        else
            redirect '/nomatch'
        end
    end
    
    get '/friends/:user2_id' do  #this route works
        @user = current_user
        @friend = User.find(params[:user2_id])
        if  @friend.friends.where(friend_id: @user.id)
            erb :'friend/index'
        else 
            redirect '/notfriends'
        end
    end

    get "/friends/:user2_id/library" do      #friend_id isnt showing in params so shows /notfriends
        @user = current_user
        @friend = User.find(params[:user2_id])
        if  @friend.friends.where(friend_id: @user.id)
            erb :'friend/library_index'
        else 
            redirect '/notfriends'
        end
    end

    get "/friends/library/:book_id" do
        @user = current_user
        @friend = User.find(params[:user2_id])
        if  @friend.friends.where(friend_id: @user.id)
            @book = @friend.books.find(params[:book_id])
            erb :'friend/show_book'
        else 
            redirect '/notfriends'
        end
    end 

    get "/friends/:user2_id/lists" do
        @user = current_user
        @friend = User.find(params[:user2_id])
        if  @friend.friends.where(friend_id: @user.id)
            @lists = List.find_by(user_id: @friend.id)
            erb :'friend/list_index'
        else 
            redirect '/notfriends'
        end
    end

    get "/friends/:user2_id/lists/:list_id" do
        @user = current_user
        @friend = User.find(params[:user2_id])
        if  @friend.friends.where(friend_id: @user.id)
            @list = List.find(params[:list_id])
            erb :'friend/show_list'
        else 
            redirect '/notfriends'
        end
    end

    delete '/friends/:user2_id' do 
        @friend = Friend.find_by(user_id: current_user.id, friend_id: params[:user2_id])
        @friend.delete
        redirect to '/friends'
    end

    get '/notfriends' do
        erb :'friend/not_friends'
    end

    get '/nomatch' do
        erb :'friend/no_match'
    end

 
end