20.times { print "-"}
puts 
puts "Enter the number"
num = gets.chomp

if num.to_i.even? 
  puts "The number is even"
else
  puts "The number is odd"
end
