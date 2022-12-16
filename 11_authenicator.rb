users = [
  { username: 'invis1', password: 'password' },
  { username: 'invis2', password: 'password' },
  { username: 'invis3', password: 'password' },
  { username: 'invis4', password: 'password' },
  { username: 'invis5', password: 'password' },
  { username: 'invis6', password: 'password' }
]

puts 'Welcome'
25.times { print '-' }
attempts = 4
while attempts.positive?
  puts ''
  print 'Username:'
  username = gets.chomp
  puts
  print 'Password:'
  password = gets.chomp
  puts
  u = users.select { |user| user.username == username && user.password == password }
  if u.empty?
    puts 'User not found'
    puts "press any to continue or press \'n\' to stop"
    promt = gets.chomp
    if promt == 'n'
      puts 'Program will stop shortly'
      break
    else
      attempts - -
      next
    end
  else
    puts 'Successfully authenticated'
    puts u
    break
  end
end
