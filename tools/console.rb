require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = CarOwner.new("Charles")
c2 = CarOwner.new("Chief")
c3 = CarOwner.new("Chalky")

m1 = Mechanic.new("Cal", "City")
m2 = Mechanic.new("Chris", "Classic")

c1.create_car("Ford", "Mustang", "Classic", m2)
c2.create_car("Nissan", "Micra", "Cheap", m1)
c2.create_car("Fiat", "500", "City", m1)


binding.pry
