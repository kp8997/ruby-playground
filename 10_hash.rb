hash = {'a' => 'a', 'b' => 'b', 'c' => 'c'}
colonHash = {a: 1, b: 2, c:3}
p colonHash
p colonHash[:c]
puts
p hash
p hash['a']

hash.each do |key, value|
  puts "#{key}: #{value}"
end