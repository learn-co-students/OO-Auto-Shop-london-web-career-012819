require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("Sal")
o2 = CarOwner.new("Alex")
o3 = CarOwner.new("Stuart")
o4 = CarOwner.new("Sofia")

m1 = Mechanic.new("Jack", "antique")
m2 = Mechanic.new("Leo", "exotic")
m3 = Mechanic.new("Peter", "clunker")
m4 = Mechanic.new("Will", "antique")

Car.new("Ford", "m1", "exotic", o1, m2)
Car.new("Honda", "m2", "exotic", o2, m2)
Car.new("Seat", "m3", "clunker", o3, m3)
Car.new("Jeep", "m4", "antique", o4, m1)
Car.new("Jeep", "m4", "antique", o2, m2)
Car.new("Seat", "m4", "clunker", o2, m3)
c1 = Car.new("Seat", "m4", "clunker", o2, m3)
c2 = Car.new("Jeep", "m4", "antique", o4, m1)

#classification: "antique" "exotic" "clunker"

binding.pry
