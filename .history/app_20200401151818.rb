require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
      binding.pry
    end

    post '/pirates' do

    end

  end
end
