require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("David Newby")
owner2 = CarOwner.new("Peter Glover")
owner3 = CarOwner.new("Léonie Sidgwick")
owner4 = CarOwner.new("Angelica Newby")

mech1 = Mechanic.new("Mr Saggy-eyes", "big family car")
mech2 = Mechanic.new("Tommy Wiseau", "supermini")


car1 = Car.new("range rover", "sport", "big family car", owner1, mech1)
car2 = Car.new("fiat", "stilo", "big family car", owner2, mech1)
car3 = Car.new("volkswagen", "golf", "small family car", owner3, mech2)
car4 = Car.new("toyota", "aygo", "supermini", owner4, mech2)
car5 = Car.new("nissan", "pixo", "supermini", owner1, mech2)

binding.pry
