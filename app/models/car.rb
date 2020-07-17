class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic

    @@all << self
  end

  def mechanics
    Mechanic.all.select {|x| x.specialty == @classification}
  end

  def self.all
    @@all
  end

  def self.classifications
    all.map {|x| x.classification}
  end

end
