class Song
  attr_accessor :name, :artist

  @@songs = []
  @@all = []

  def initialize(name, artist)
    @name = name
    @artist = artist
    save
  end

  def save
    @@all << self
  end
  def self.all
    @@all
  end

  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end
end
