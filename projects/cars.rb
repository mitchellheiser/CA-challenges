
class Vehicle
    attr_accessor :brand, :name, :refuel 
    def initialize(brand, name, fuel_in_tank) 
     @brand = brand
     @name = name
     @fuel = fuel_in_tank
     puts "braaaappp, stu , stu , stu, stu, stu"
     
    end

    def refuel
    litres= gets.chomp.to_i
       @fuel += litres
       if @fuel < fuel_max
        puts "added #{litres}L of fuel to the #@name} "
    elsif 
        @fuel >= fuel_max
    puts " can  not add any more fuel to #{@name} the tank is full"
      self
    end
    end
    def fuel_level
        puts "added 10L of fuel to #{@name}, the is now #{@fuel}L of fuel in the tank"
        self
    end

    def name
        return @name
    end
end

class Car<Vehicle
  def winds_up
    puts "winds up the windows"
    self
  end
  def refuel
    super
    self
  end
  def fuel_max
    fuel_max = 50
  end
end

class Motorbike<Vehicle
    def wheelie
        puts "driver pops a wheelie"
        self
    end
    def refuel
        super
        self
    end
    def fuel_max
        fuel_max = 15
    end

end

car1 = Car.new("mazda","RX-7", 0)
car2 = Car.new("Nissan", "GTR- R32",0)
bike1 =Motorbike.new("ducati", "138",0)

car1.refuel.refuel.refuel
bike1.refuel.refuel.fuel_level.fuel_level.refuel.fuel_level