class Ship
   attr_accessor :name, :type, :booty
  
  @@all = []
  
  def initialize(name:, type:, booty:)
    @name =  name 
    @height = height
    @booty = booty 
  end 
  
  def self.all 
    @@all
  end 

end