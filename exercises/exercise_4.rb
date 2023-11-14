require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...


stores = Stores.new
stores.name = "Surrey"
stores.annual_revenue = 224000
stores.mens_apparel = false
stores.womens_apparel = true
stores.save

stores = Stores.new
stores.name = "Whistler"
stores.annual_revenue = 1900000
stores.mens_apparel = true
stores.womens_apparel = false
stores.save

stores = Stores.new
stores.name = "Yaletown"
stores.annual_revenue = 430000
stores.mens_apparel = true
stores.womens_apparel = true
stores.save

@all_mens_apparel = Stores.where(mens_apparel: true)

@all_mens_apparel.each do |store|
  puts "Store with only Men's apparel: #{store.name} has Annual Revenue: #{store.annual_revenue}"
end

@all_womens_apparel = Stores.where(womens_apparel: true)

@all_womens_apparel.each do |store|
  puts "Store with only Women's apparel: #{store.name} has Annual Revenue: #{store.annual_revenue}"
end

