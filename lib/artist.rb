class Artist 
  attr_accessor :name 
  
 
  
  def initialize(name)
    @name = name
    @@all = []
  end 
 
end 