require './environment'

module FormsLab
  class App < Sinatra::Base

  get '/' do 
    erb :root
  end 
  
  get '/new' do 
    erb :"pirates/new"
  end
  
  post '/pirates' do 
    binding.pry
    #@pirate = Pirate.new(name: params[:name], weight: params[:weight], height: params[:height])
  end
  
  end
end
