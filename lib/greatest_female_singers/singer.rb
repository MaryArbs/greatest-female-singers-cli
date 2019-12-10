module GreatestFemaleSingers
 class Singer

  attr_accessor :name, :born, :bio, :trademark, :nickname, :profile_url


  @@all = []

  def initialize(name, profile_url)
     @name = name
     @profile_url = profile_url
     save
  end

  def save
    @@all << self
  end

  def self.all
     @@all
  end

  def self.print_with_index
    self.all.each.with_index(1) do |singer, index|
      puts "#{index}. + #{singer.name}"
    end
  end

 def self.find_by_index(index)
     @@all[index]
 end
 end
end
