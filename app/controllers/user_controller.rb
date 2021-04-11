require './config/environment'

class UserController < ApplicationController

    get 'users/:id' do
        @user = current_user
        erb :'user/index'
    end

end
