require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jonny", last_name: "Kalambay", hourly_rate: 99)

@store2.employees.create(first_name: "Don", last_name: "Burks", hourly_rate: 44)
@store2.employees.create(first_name: "Michael", last_name: "Jackson", hourly_rate: 3)

puts Employee.count