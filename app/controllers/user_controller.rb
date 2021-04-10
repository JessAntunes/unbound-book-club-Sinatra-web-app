require './config/environment'

class UserController < ApplicationController

get 'user/:id'
    @user = current_user
    erb :'user/index'
end