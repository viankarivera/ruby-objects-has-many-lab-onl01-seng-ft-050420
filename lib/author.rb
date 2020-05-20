class Author

  attr_accessor :name, :posts

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
