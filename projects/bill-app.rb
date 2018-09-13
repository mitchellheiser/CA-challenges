=begin
items = [{ customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]
response = ""
until response == "quit"

  puts "enter customers name"
  response= gets.chomp.downcase
  case response
  when
    "john"
    puts "john ordered #{items[0] [:item]} and #{items[2] [:item]} which cost $#{items[0] [:cost] + items[2] [:cost]}"
    #puts items[0].find{|key,value| value[:customer] == "John"}.try(:first)
  when
    "sarah"
    puts "sarah ordered #{items[1] [:item]} which cost $#{items[1] [:cost]}"
  else
    if response == "quit"
      puts "invalid, customer does not exist."
    end

   end
end
=end
#items = [{ customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]
require 'json'
#File.write('items.json', JSON.dump(items)) 
items = JSON.parse(File.read('items.json'))
puts items
puts "enter a customers name"
name = gets.chomp

total= 0

for order in items
  if order['customer']== name
    total += order['cost']
  end
end
puts "#{name} owes $#{total}"