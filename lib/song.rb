class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name, artist)
    @name = name
    @artist = artist
    @@all << self
  end
  def self.new_by_filename(file)
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end
  def self.all
    @@all
  end
  #end?
  def song
    Song.all.select{|song| song.artist == self}
  end
  
  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
end
