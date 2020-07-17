class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def cars
    Car.all.select {|x| x.mechanic == self}
  end

  def car_owners
    cars.map {|x| x.owner}.uniq
  end

  def car_owner_names
    car_owners.map {|x| x.name}
  end

  def self.all
    @@all
  end

end
