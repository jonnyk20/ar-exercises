require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Test ", last_name: "Employee", hourly_rate: 99)

puts "---last employee---"
puts @store1.employees.last.first_name

puts "---Choose a store name---"
@store_name = gets.chomp

@new_store = Store.new(name: @store_name) 
@new_store.save

puts @new_store.errors.messages
