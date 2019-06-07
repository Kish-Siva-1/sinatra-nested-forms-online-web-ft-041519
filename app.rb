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
    @pirate = Pirate.new(:name => params[:pirate][:name], :weight => params[:pirate][:weight], :height => params[:pirate][:height])
    
    params[:pirate][:ships].each do |details|
      binding.pry
      Ship.new(details[:name], details[:type], details[:booty])
    end
    
    #erb :"pirates/show"
  end
  
  end
end
