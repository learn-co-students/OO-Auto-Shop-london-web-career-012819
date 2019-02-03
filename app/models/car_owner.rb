class CarOwner

  attr_reader :name, :car

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car| car.car_owner == self }
  end

  def mechanics
    cars.map { |car| car.mechanic }
  end

  def self.average_cars
    arr = @@all.map { |all| all.name  }
    arr2 = Car.all.map { |all| all.make  }
    arr2.length.to_f/arr.length.to_f
  end


end
