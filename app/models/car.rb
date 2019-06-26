class Car

  attr_reader :make, :model, :classification, :mechanic, :car_owner

  @@all = []

  def initialize(make, model, classification,mechanic,car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    @@all.map {|car| car.classification}
  end

  def mechanics
    Mechanic.all.select {|expertise| expertise.specialty ==@classification}
  end
end
