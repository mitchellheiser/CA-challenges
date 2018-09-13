shopping = ['apples', 'milk', 'bread']
puts shopping
puts "would you like to add anything else"
3.times do input=gets.chomp
        if input == 'ice cream'|| input =='Ice Cream'||input =='ice-cream'
            shopping << 'broccoli'
        else
            shopping << input
        end

end
puts "your new list is #{shopping.sort} there is #{shopping.length} items on your list" 

