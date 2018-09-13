balance=Array.new
history=Array.new
    #define methods when making apps it make everything so much easier and makes the actual app it self much neater and easier to under stand.
def user(balance,history)
    puts "please insert username"
    user=gets.chomp
    user={bal: balance, his: history}
  #  puts welcome(balance,history)
end
def swith_user(balance,history)
    puts "enter username"
    new_user=gets.chomp
    if new_user = user.hash
        user(balance,history)
    else
    new_user= {bal: balance, his: history}
    puts welcome(balance,history)
    end
end

    def bal(balance, history)
        puts"your balance is $#{balance.sum}"
        puts welcome(balance,history)
    end

    def his(balance, history)
        puts "this is your history"
        puts history
        puts bal(balance,history)
    end

    def dep(balance, history)
        puts "how much would you like to deposit"
        input = ' '
        input = gets.chomp.to_i
        puts "you are depositing $#{input}"
        balance.push input
        history << input
        puts bal(balance,history)
    end

    def withdraw(balance, history)
        puts "how much would like to  withdraw"
        input= ' '
        input= gets.chomp.to_i
        if balance.sum < input
        puts error
        else
            puts "you have chosen to withdraw $#{input}"
            balance.push -input
            history << -input
            puts bal(balance,history)
        end
    end

    def exit(balance,history)
        puts "thank you for banking with us please take your reciept"
        puts user(balance,history)
        
    end

    def error
        puts "Error! invalid selection, please try again"
    end

    def clear
        system("clear")
    end
#this is the actual app all the code above are my defined methods.
     puts user(balance,history)
    def welcome(balance, history)
        #puts user(balance,history)
    puts "welcome to the banking app, please enter '1' to check your balance, '2' to check for history, '3' to make a deposit, '4' to withdraw, '5' to exit or '6' to switch user"
    
    response = gets.chomp.downcase
    case response 
    when "1"
        bal(balance, history)
    when "2"
        his(balance, history)
    when "3"
        dep(balance, history)
    when "4"
        withdraw(balance, history)
    when "5"
        exit(balance,history)
        File.open('transaction.txt', 'w') { |file| file.write(" you balance is #{balance.sum} your transaction history is #{history}") }
    when "6"
        swith_user(balance,history)
    else
        clear
        error
        welcome(balance, history)
    end
end
puts welcome(balance, history)