class Singer
  
  attr_accessor :name, :birthday, :age, :born_in, :bio, :trademark, :url 
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.save 
  end 
  
  def self.all
     @@all
  end

  def save
    @@all << self
  end