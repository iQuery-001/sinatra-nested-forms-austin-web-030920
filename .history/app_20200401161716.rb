require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate_name = params[:pirate[:name]]
      @ship1 = params[:pirate][:ships][0][:name]
      @ship2 = params[:pirate][:ships][1][:name]
    end

  end
end
