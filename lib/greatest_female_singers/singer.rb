class GreatestFemaleSingers::Singer
  
  attr_accessor :name, :birthday, :age, :born_in, :bio, :trademark, :url 
  
  @@all = []
  
  def initialize(name, url)
    @name = name
    @url = url 
    self.save 
  end 
  
  def self.all
     @@all
  end

  def save
    @@all << self
  end