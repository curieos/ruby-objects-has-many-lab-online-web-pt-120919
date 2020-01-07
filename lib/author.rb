class Author 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
    save
    puts name
  end
  
  def save
    @@all << self
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def posts
    @posts
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def self.post_count()
    count = 0
    @@all.each do |author|
      count += author.posts.length()
    end
    count
  end
end