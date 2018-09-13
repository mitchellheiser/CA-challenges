require 'Geocoder'# you need to specify the required use of ruby gems at the top of the app to ensure they work
class Cat
    attr_accessor :name
    def initialize(name)
        @name = name
        
    end
    def speak
        puts "#{@name} says meow"
    end
end

class Dog
    attr_accessor :breed, :location, :walk, :distance
    def initialize(dog_name, breed, location, walk, distance)
        @name = dog_name
        @breed = breed
        @location = location
        @walk = walk
        @distance = distance
        puts 'Initialize running'
    
    end
    def speak
        puts "#{@name} says woof!"
    end
    def walk
        @walk += 1
        self #<---- this makes it return is own value allowing you to chain the methods as seen is the line fido.walk.walk.display_walks
       # puts "I have been for #{@walk} walks today"
    end
    def total_distance
        @distance* @walk
    end
    def start_trace
        trace =
        TracePoint.new(:call) { |tp| p [tp.path, tp.lineno, tp.event, tp.method_id] }
        trace.enable
        yield
        trace.disable
    end
    def get_lat_long
        lat_long= Geocoder.search(@location)
        lat_long.first.coordinates
    end

    def display_walks
        
        puts "I have been for #{@walk} walks today which were a total distance of #{total_distance}km"
    end
    # #setter
    # def name=(value)
    #     @name = value
    # end
     #getter
    def name
       return @name
    end
end 

fido = Dog.new("fido", "kelpie", "brisbane", 2, 3)
#fido.name = "bill"
lassie = Dog.new("lassie", "pug", "sydney", 4, 3)
#assie.name = "lassie"
pixie = Cat.new ("pixie")

puts fido.inspect
puts lassie.inspect
fido.speak
lassie.speak
pixie.speak
puts fido.location
puts lassie.location
# fido.walk
# fido.walk
# fido.walk
puts " The coordinates of my walk is #{fido.get_lat_long}"
fido.walk.walk.display_walks
puts fido.start_trace{fido.walk}
#puts fido.name

