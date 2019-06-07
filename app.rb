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
    @name = params[:pirates][:name]
    @weight = params[:pirates][:weight]
    @height = params[:pirates][:height]
    @pirate = Pirate.new(name: @name, weight: @weight, height: @height)
    #erb :"pirates/show"
  end
  
  end
end
