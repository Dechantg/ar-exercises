require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store4 = Stores.find(4)
@store5 = Stores.find(5)
@store6 = Stores.find(6)





@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Seger", hourly_rate: 60)
@store2.employees.create(first_name: "Brian", last_name: "Johnston", hourly_rate: 60)
@store2.employees.create(first_name: "Bill", last_name: "Sinclare", hourly_rate: 60)
@store2.employees.create(first_name: "Jimmy", last_name: "Beck", hourly_rate: 60)
@store4.employees.create(first_name: "Eric", last_name: "Cale", hourly_rate: 60)
@store4.employees.create(first_name: "JJ", last_name: "Clapton", hourly_rate: 60)
@store4.employees.create(first_name: "Paul", last_name: "Lennon", hourly_rate: 60)
@store5.employees.create(first_name: "Saul", last_name: "Aibbs", hourly_rate: 60)
@store5.employees.create(first_name: "Chris", last_name: "Stevenson", hourly_rate: 60)
@store5.employees.create(first_name: "Gordon", last_name: "Lightfoot", hourly_rate: 60)
@store6.employees.create(first_name: "Chad", last_name: "Mitchell", hourly_rate: 60)
@store6.employees.create(first_name: "Scott", last_name: "Oswald", hourly_rate: 60)
@store6.employees.create(first_name: "Kenny", last_name: "Lives", hourly_rate: 60)