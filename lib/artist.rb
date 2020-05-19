class Artist
  attr_accessor :name, :songs

  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
    #describe "#songs" do
    #it "has many songs" do
    #  expect(adele.songs).to be_a(Array)
    #  hello = Song.new("Hello")
    #  hello.artist = adele
    #  expect(adele.songs).to eq([hello])
    @songs
  end

  def self.song_count
    @@song_count
  end
end
