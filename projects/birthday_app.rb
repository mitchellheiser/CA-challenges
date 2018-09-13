students = [{student: "mitchell", age: 19, birthday: "1998-10-25"}, {student: "glenn", birthday: "1996-6-13"}]

puts "enter your name"
name= gets.chomp
for bday in students
    if bday[:student] == name
        date = bday[:birthday]
    end
end
puts "congrats #{name} your birthday is #{date} "

