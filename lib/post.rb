class Post 
  attr_accessor :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @author = nil
    save
  end
  
  def save
    @@all << self
  end
  
  def author
    @author
  end
  
  def author=(author)
    @author = author
    author.posts << self
  end
  
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
  
  def self.all
    @@all
  end
end