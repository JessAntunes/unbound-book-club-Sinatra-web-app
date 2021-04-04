require './config/environment'

class UserController < Sinatra::Base

  get "/:user" do
    @user = params[:user]
    erb :user
  end

end