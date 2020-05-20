class Artist

  attr_accessor :name

  @@all = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end 

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    Song.new(song)
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

end
