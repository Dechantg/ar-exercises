require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...


@store3 = Stores.find(3)

p @store3

@store3.destroy


stores_count = Stores.count
puts "after the destruction of store 3 the count is now #{stores_count}"

