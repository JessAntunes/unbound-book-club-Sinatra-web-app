require './config/environment'

class ListController < ApplicationController

    # get '/lists' do
    #     @lists = List.all
    #     erb :display_lists
    # end

    # get '/lists/:id' do   #:id - route variable (not literal)
    #     @list = List.find(params[:id])
    #     erb :list #renders post/show template in from view folder
    # end

    # get '/lists/new' do    #route url
    #     erb :new_list
    # end

    # post '/lists' do
    #     @list = List.new
    #     @list.title = params[:title]
    #     @list.save
    #     redirect "/lists/#{@list.id}" #renders view of specific list
    # end

end