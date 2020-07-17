class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # - Get a list of all owners
    @@all
  end

  def list_cars
    # - Get a list of all the cars that a specific owner has
    Car.all.select { |car| car.car_owner == self }
  end

  def list_mechanics
    # - Get a list of all the mechanics that a specific owner goes to
    self.list_cars.map {|instance| instance.mechanic.name }.uniq
  end

  def self.average
    # - Get the average amount of cars owned for all owners
    Car.all.length.to_f / self.all.length.to_f
  end

end
