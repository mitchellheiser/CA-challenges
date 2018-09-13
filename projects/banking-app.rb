def bal(balance)

puts "welcome to the banking app. what would you like to do? (options: 1.balance, 2.deposit or 3.withdraw)"

    options= gets.chomp
    if options== 1 
    puts" your balance = #{balance}"
    elsif options== 2
        puts" how much would you like to deposit?"
        balance=gets.to_i
        puts" balanace = #{balance}"
    elsif options ==  3 
        puts "how much would you like to withdraw"
        withdraw= gets.to_i
        puts " you have succsefully  withdrawn $#{withdraw} you new balance is $#{balanace}"

    elsif 
        puts"invalid selection"

    end
