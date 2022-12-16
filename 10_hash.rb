hash = { 'a' => 'a', 'b' => 'b', 'c' => 'c' }
colonHash = { a: 1, b: 2, c: 3 }
p colonHash
p colonHash[:c]
puts
p hash
p hash['a']

hash.each do |key, value|
  puts "#{key}: #{value}"
end

h = { 'test' => 13, 'check' => 14 }
h1 = { 'test' => 13, 'check' => 14, 'l' => 'Mushroom', 'c' => 'Chicken' }

h1.each { |k, v| h1.delete(k) if v.is_a?(String) }
p h1
# h.keys, h.values
