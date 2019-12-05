class GreatestFemaleSingers::Singer
  
  attr_accessor :name, :born, :bio, :trademark, :nickname :profile_url 
  
  @@all = []
  
  def initialize(singer_hash)
    # singer_hash.each {|attribute, value| self.send(("#{attribute}="), value)} 
    # #iterating through the student_hash attributes, assinging each attribute method(setter method) a value- (self=instance of singer)
     @name = name 
     @born = born
     @trademark = trademark
     @nickname = nickname
     @profile_url = profile_url
     save
  end 
    
  def save
    @@all << self
  end
  
  def self.all
     @@all      # allows access to the @@all variable 
  end
  
  def 

  