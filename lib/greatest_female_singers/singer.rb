class GreatestFemaleSingers::Singer
  
  attr_accessor :name, :born, :bio, :trademark, :nickname, :profile_url 
  
  @@all = []
  
  def initialize(singer_hash)
   
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
  
   def self.find_by_index(index)
    @@all[index]
  end

  def self.find_by_name(name)
    self.all.detect { |singer| singer.name == name }
  end
  
end 

  