require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Mechanic.new("Bob", "Antique")
m2 = Mechanic.new("Karl", "Antique")
m3 = Mechanic.new("Erika", "Exotic")
m4 = Mechanic.new("John", "Clunker")
m5 = Mechanic.new("Charles", "Clunker")

co1 = CarOwner.new("Sofia")
co2 = CarOwner.new("Erika")
co3 = CarOwner.new("Ricky")
co4 = CarOwner.new("Luc")
co5 = CarOwner.new("Peder")
co6 = CarOwner.new("Kalle")

# (make, model, classification, car_owner, mechanic)

car1 = Car.new("BMW", "Speed", "Clunker", co1, m4)
car2 = Car.new("Audi", "A6", "Antique", co2, m2)
car3 = Car.new("Ferrari", "Fast", "Antique", co3, m1)
car4 = Car.new("Golf", "Slow", "Clunker", co4, m5)
car5 = Car.new("Jaguar", "XKR", "Exotic", co5, m3)
car6 = Car.new("BMW", "M6", "Exotic", co6, m3)
car7 = Car.new("Toyota", "Prius", "Clunker", co4, m4)






binding.pry
