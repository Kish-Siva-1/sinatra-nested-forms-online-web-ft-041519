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
    @pirate = Pirate.new(:name => params[:pirate][:name], :weight => params[:pirate][:weight], :height => params[:pirate][:height])
    
    params[:student][:courses].each do |details|
    Course.new(details)
  end
    
    #erb :"pirates/show"
  end
  
  end
end
