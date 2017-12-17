class Owner
  attr_accessor :name, :pets
  # can't change its species
  attr_reader :species

  OWNERS = []

  # keeps track of the owners that have been created
  def self.all
    OWNERS
  end

  # can count how many owners have been created
  def self.count
    OWNERS.size
  end

  # can reset the owners that have been created
  def self.reset_all
    OWNERS.clear
  end

  # can initialize an owner
  # initializes with a species
  # is initialized with a pets attribute as a hash with 3 keys
  def initialize (species)
    @species = species
    OWNERS << self
    @pets = { :fishes=>[], :dogs=>[], :cats=>[] }
  end

  # can say its species
  def say_species
    "I am a #{species}."
  end

  # can buy a fish that is an instance of the Fish class
  # knows about its fishes
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  # can buy a cat that is an instance of the Cat class
  # knows about its cats
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  # can buy a dog that is an instance of the Dog class
  # knows about its dogs
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
end
