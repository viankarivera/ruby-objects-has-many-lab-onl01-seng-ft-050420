class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
  end

  def posts
    Song.all.select {|song| song.artist == self}
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
end
