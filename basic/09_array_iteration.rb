a = (1..100).to_a
b = (100..200).to_a
for i in a
  p "value is #{i}"
end

b.each do |value|
  print "value is #{value}  "
end
puts
b.each { |value| print "test #{value}  " }
puts
puts 'odd numbers only'
p b.shuffle.select { |value| value.odd? }
