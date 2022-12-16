def sum(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def substract(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
  first_num.to_f / second_num.to_f
end

def modulus(first_num, second_num)
  first_num.to_f % second_num.to_f
end

puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
puts "The first number divided by the second number is: #{divide(first_number, second_number)}"
puts "The first number subtracted from the second number is: #{substract(first_number, second_number)}"
puts "The first number added to the second number is: #{sum(first_number, second_number)}"
puts "The first number mod the second number is: #{modulus(first_number, second_number)}"