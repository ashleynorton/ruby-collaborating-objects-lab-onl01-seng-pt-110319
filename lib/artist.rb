class Artist 
  attr_accessor :name 
  
 
  
  def initialize(name)
    @name = name
    @@all = []
  end 
  
  def all 
    @@all << self 
  end 
 
end 