class Artist 
  attr_accessor :name 
  
 
  
  def initialize(name)
    @name = name
    @@all = []
  end 
  
  def self.all 
    @@all << self 
  end 
 
end 