class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
    @songs << song 
  end 
  
  def songs 
    Song.all.select { |song| 
      song.artist == self
    }
  end 
  
  def self.find_or_create_by_name(name)
    if self == nil 
      self = Artist.new(name)
    else
      self.name = name 
    end 
  end 
 
end 