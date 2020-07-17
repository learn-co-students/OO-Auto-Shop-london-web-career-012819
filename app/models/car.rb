class Car

  attr_reader :make, :model, :car_owner, :mechanic, :classification

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
    @@all
  end

  def self.classifications
    @@all.map { |car| car.classification  }
  end

  def mechanics
    Mechanic.all.find_all { |mechanic|  mechanic.specialty == self.classification }
  end

end
