class Mechanic

  attr_reader :name, :specialty
  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    # - Get a list of all mechanics
    @@all
  end

  def cars
    # - Get a list of all cars that a mechanic services
    Car.all.select {|instance| instance.mechanic == self}
  end

  def owners
    # - Get a list of all the car owners that go to a specific mechanic
    self.cars.map {|instance| instance.car_owner}
  end

  def owners_names
    # - Get a list of the names of all car owners who go to a specific mechanic
    self.owners.map { |owner| owner.name}
  end

end
