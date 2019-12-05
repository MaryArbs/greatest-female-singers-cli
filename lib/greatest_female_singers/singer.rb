class GreatestFemaleSingers::Singer
  
  attr_accessor :name, :born, :bio, :trademark, :nick_name :profile_url 
  
  @@all = []
  
  def initialize(singer_hash)
    singer_hash.each {|attribute, value| self.send(("#{attribute}="), value)} 
    #iterating through the student_hash attributes, assinging each attribute method(setter method) a value- (self=instance of singer)
    
    @@all << self   #shoveling each instance of singer into the @@all class variable 
  end 
    
  
  def self.all
     @@all      # allows access to the @@all variable 
  end

  