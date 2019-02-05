class Mechanic

  attr_accessor :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
    car.mechanic == self
    end
  end

  def car_owners
    cars.map do |car|
    car.owner
    end
  end

  def owner_names
    cars.map {|car| car.owner.name}.uniq
  end

end
