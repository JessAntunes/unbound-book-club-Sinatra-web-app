require './config/environment'

class BookController < Sinatra::Base

  get "/newbook" do
    @book = Book.new(params[:title])
    erb :book
  end

end