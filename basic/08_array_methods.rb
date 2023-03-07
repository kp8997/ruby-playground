ar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def lines
  20.times { print '-' }
end

x = 1..100
letters = 'a'..'z'

p x.to_a.shuffle
p letters.to_a.shuffle

# to mutate the variables can use bang (!)

ax = x.to_a
lines
puts 'ax before reserve'
p ax
lines
puts 'ax after reserve'
ax.reverse!
p ax

lines
puts "a.to_a.suffle! - bang will not work with \'x\' because it only work for the object directly call it"
p x.to_a.shuffle!
p x

lines
puts 'add to the last'
p ax << 'the last one'

puts 'add to the first'
p ax.unshift('the first one')

# a.uniq, a.suffle, a.append, a.shift, a.unshift, a.reverse, a << "value", a.empty?, a.included?("the first one ")
# a.push, a.pop, a.join, "a,d,c".split(",")
# _ in repl for the last command(or values)
# %w(value value) => ["value", "value"]
