class Post 
  attr_accessor :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @author = nil
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
end