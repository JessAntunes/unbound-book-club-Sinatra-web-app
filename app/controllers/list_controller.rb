require './config/environment'

class ListController < Sinatra::Base

    get '/lists' do
        @lists = List.all
        erb :"lists/index.html"
    end

    get '/lists/:id' do   #:id - route variable (not literal)
        @list = List.find(params[:id])
        erb :"lists/show.html"   #renders post/show template in from view folder
    end

    get '/lists/new' do    #route url
        erb :"posts/new.html"
    end

    post '/lists' do
        @list = List.new
        @list.title = params[:title]
        @list.save
        redirect "/lists/#{@post.id}" #renders view of specific list
    end

end