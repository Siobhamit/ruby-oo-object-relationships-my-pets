class Dog
attr_accessor :owner, :mood
attr_reader :name


@@dogs = []


  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogs << self
    owner.dogs.push(self)
  end

  def self.all
    @@dogs
  end


end