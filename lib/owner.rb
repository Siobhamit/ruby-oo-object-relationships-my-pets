class Owner
  attr_accessor :cats, :dogs
  attr_reader :species, :name
  


@@owners = []





  def initialize(name)
    @name = name
    species = "human"
    @species = species
    @@owners << self
    @dogs = []
    @cats = []
  end 

def say_species
  says = "I am a human."
  says
end

def self.count
@@owners.count
end

def self.all
  @@owners
end

def self.reset_all
  @@owners.clear
  @@owners.count
end

def cats
@cats
end



def dogs
 @dogs
end

def buy_cat(name)
cat = Cat.new(name, self)
self.cats << cat unless self.cats.include?(cat)

end

def buy_dog(name)
dog = Dog.new(name, self)
self.dogs << dog unless self.dogs.include?(dog)
end

def walk_dogs
  self.dogs.each {|dog| dog.mood = "happy"}
end

def feed_cats
  self.cats.each {|cat| cat.mood = "happy"}
end

def sell_pets
  self.cats.each {|cat| cat.mood = "nervous"; cat.owner = nil}
  self.dogs.each {|dog| dog.mood = "nervous"; dog.owner = nil}
  self.cats.clear
  self.dogs.clear
end

def list_pets
says = "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
says
end

end