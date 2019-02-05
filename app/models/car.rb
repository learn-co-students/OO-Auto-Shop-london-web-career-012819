class Car

  attr_accessor :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    @@all.map do |car|
      car.classification
  end.uniq
  end

  def mechanics
    mechanics_arr = []
      @@all.each do |car|
        if self.classification == car.mechanic.specialty
          mechanics_arr << car.mechanic
        end
      end
  mechanics_arr.uniq
  end

end
