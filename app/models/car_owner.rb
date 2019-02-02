class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def create_car(make, model, classification, mechanic)
    Car.new(make, model, classification, self, mechanic)
  end

  def cars
    Car.all.select {|x| x.owner == self}
  end

  def mechanics
    cars.map {|x| x.mechanic}
  end

  def self.all
    @@all
  end

  def self.average
    Car.all.count.to_f / all.count.to_f
  end
end
