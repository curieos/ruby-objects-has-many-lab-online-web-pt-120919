class Song 
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @artist = nil
  end
  
  def artist
    @artist
  end
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end
  
  def artist_name
    self.artist.name
  end
end