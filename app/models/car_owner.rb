class CarOwner

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    cars.map do |car|
      car.mechanic
    end
  end

  def self.average_cars
    Car.all.length / @@all.length
  end

end
