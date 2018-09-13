to_be_made = ["cocktail", "cocktail", "cocktail", "water", "water", "beer", "beer", "beer", "beer", "beer", "beer"]
#these are the defined methods, i defined them serperatley to keep the app neat and readable

def cocktail(to_be_made)
    puts "so you want a cocktail, it will be ready in a second"
     to_be_made << "cocktail"
     puts order(to_be_made)
end

def beer(to_be_made)
    puts "so you want a beer, it will be ready in a second"
    to_be_made << "beer"
    puts order(to_be_made)
end

def water(to_be_made)
    puts "so you want a water, it will be ready in a second"
    to_be_made << "water"
    puts order(to_be_made)
end

def exit(to_be_made) # alway make sure to use brackets if you are specify a value ruby will sometimes let you get way with it but most oother languages dont so it is good practice to get into the ahbit of ()
    profit = (to_be_made.count("cocktail") * 14) + (to_be_made.count("beer") * 9) + (to_be_made.count("water") * 5.85)
    puts "there is #{to_be_made.count("cocktail")} cocktails to make, #{to_be_made.count("beer")} beers and #{to_be_made.count("water")} waters to be poured. the total profit for tonight is $#{profit.to_f}"    
end

def error
    puts "Error! invalid selection, please try again"
end

def clear
    system("clear")
end
# the app 
def order(to_be_made)
    puts "what would you like to order a cocktail, a beer or a water?"
    response = gets.chomp.downcase
    
    case response
    when
        "cocktail"
        cocktail(to_be_made)
    when 
        "beer"
        beer(to_be_made)
    when 
        "water"
        water(to_be_made)
    when 
        "exit"
        exit(to_be_made)
    else 
        clear
        error
        order(to_be_made)
    end
end
#this executes the app
puts order(to_be_made)