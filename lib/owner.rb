require 'pry'
class Owner
  # attr_accessor :name
  attr_reader :species, :name
  
  @@all = []
  
  def initialize(name, species='human')
    @name = name
    @species = species
    @@all << self
  end 

  def say_species
     "I am a #{@species}."
  end 
  
  
  def self.all
    @@all
  end 
  
  def self.count 
    @@all.length 
  end 
  
  def self.reset_all
    @@all.clear 
  end 
  
  def cats
    Cat.all
    #binding.pry
    
    #all_cats.map {|owner|}
    
  end 
  
end