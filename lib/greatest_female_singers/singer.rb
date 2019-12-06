require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative '../greatest_female_singers.rb'

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
    self.all.each_with_index do ||
  end

   def self.find_by_index(index)
    self.all.detect{|index|
    }
  end

  # def self.find_by_name_and_index(name,index)
  #   self.all.detect { |singer, index|| singer.name == name }
  #   binding.pry
  # end

end

# Singer.find_by_name("Whitney Houston")
