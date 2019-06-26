class CarOwner

  attr_reader :name


  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars
    Car.all.select {|car| car.car_owner == self}
  end

  def mechanics
    all_cars.map {|car| car.mechanic}
  end

  def self.average
    a = Car.all.count.to_f
    a / all.count.to_f
  end

end
