require_relative 'auth' # file name

# $LOAD_PATH << "." # path to the file
# require "auth" # file name
users = [
  { username: 'mashrur', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonshow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

new_user = Auth.create_secure_users(users)
puts new_user
p Auth.authenticate('heisenberg', 'password5', new_user)
