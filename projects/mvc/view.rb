
class StatsView
  def greeting
    puts "welcome to my awesome stats app"
  end
  def menu
    puts "1. Insert numbers"
    puts "2. List numbers"
    puts "3. Show average"
    puts "4. Quit"
    gets.chomp.to_i
  end
  # def read_numbers
  #     values= []
  #     puts "please enter one number per line (-1 to end):"
  #     num = ''
  #     until num == 'end'
  #         num == gets.chomp
  #         values << num.to_i if num != 'end'
  #     end
  #     values
  # end
  
  def read_numbers
    values = []
    puts "Please enter one number per line ('end' to end):"
    num = ''
    until num == 'end'
      num = gets.chomp
      values << num.to_i if num != 'end'
    end
    values
  end
  def display_numbers(numbers)
    puts "numbers: #{numbers}"
    puts
  end
  
  def display_average(average)
    puts "average: #{average}"
  end
  def quit 
    puts "Goodbye"
  end
end