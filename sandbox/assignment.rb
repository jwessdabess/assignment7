require_relative '../config/environment'

puts User.first.inspect


puts User.first.todo_lists.inspect
puts User.first.todo_items.inspect

# Checks for gender other than [male, female, N/A]
User.create(login: "RubyFan1", password: "ruby123" )
User.last.create_account!( gender: "fake", age: "24", first_name: "too", last_name: "young")

# too old
User.create(login: "RubyFan2", password: "ruby123" )
User.last.create_account!( gender: "N/A", age: "100", first_name: "too", last_name: "old")

# age must be integer
User.create(login: "RubyFan3", password: "ruby123" )
User.last.create_account!( gender: "N/A", age: "21.5", first_name: "not", last_name: "integer")

# too young
User.create(login: "RubyFan4", password: "ruby123" )
User.last.create_account!( gender: "N/A", age: "20", first_name: "too", last_name: "young")

# good data
User.create(login: "RubyFan5", password: "ruby123" )
User.last.create_account!( gender: "N/A", age: "22", first_name: "just", last_name: "right")
