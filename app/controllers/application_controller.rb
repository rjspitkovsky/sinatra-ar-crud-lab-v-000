
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do

    erb :new
  end

  get '/posts' do
    Post.create(name: params[:name], content: params[:content])
    @posts = Post.all
    erb :index
  end

end
