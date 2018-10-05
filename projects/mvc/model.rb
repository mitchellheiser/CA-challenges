class StatsModel
    def initialize
        @numbers = []
    end
    
    def insert(numbers)
        @numbers += numbers
    end
    def list
        @numbers
    end
    
    def average
        sum = 0
        @numbers.each { |x| sum += x}
        sum / @numbers.length
        
        
        
    end