class Singer
  
  attr_accessor :name, :birthday, :age, :born_in, :bio, :trademark, :url 
  @@all = []
  
  def initialize(name=nil, birthday=nil, age=nil, urlgit=nil)
    @name = name
    @birthday = birthday 
    @age = age 
    @url = url 
    self.save 
  end 
  
  def self.all
     @@all
  end

  def save
    @@all << self
  end