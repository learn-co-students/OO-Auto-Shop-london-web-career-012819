require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Tomi Ajayi")
co2 = CarOwner.new("Michael Mason")
co3 = CarOwner.new("Peter Wood")
co4 = CarOwner.new("Noel Mclaughlin")

m1 = Mechanic.new("Auto","Exotic")
m2 = Mechanic.new("Carz Brandz", "Antique")
m3 = Mechanic.new("Tops AutoRepars", "Clunker")
m4 = Mechanic.new("F1 Repairs", "Clunker")
m5 = Mechanic.new("Posh Cars", "Exotic")

c1 = Car.new("Mercedes","Benz", "Exotic",m1,co1)
Car.new("Nissan","Micra", "Clunker", m3,co2)
Car.new("Honda","Civic", "Clunker", m3,co1)


binding.pry
