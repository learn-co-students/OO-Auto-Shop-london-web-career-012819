class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    # list of all cars
    @@all
  end

  def self.classifications
    # list of all car classifications
    self.all.map { |instance| instance.classification }
  end

  def list_mechanics
    # List of mechanics that have an expertise that matches the car classification
    Mechanic.all.select { |mech| mech.specialty == self.classification }
  end

end
