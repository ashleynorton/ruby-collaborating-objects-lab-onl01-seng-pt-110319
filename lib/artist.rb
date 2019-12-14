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
    if Song.artist.name == nil 
      Song.artist.name = Artist.new(name)
    else
      Song.artist.name = name 
    end 
  end 
 
end 