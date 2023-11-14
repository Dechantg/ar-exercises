require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


total_revenu = Stores.sum(:annual_revenue)
store_count = Stores.count
average_revenue = total_revenu / store_count
@over_target = Stores.where('annual_revenue > ?', 1000000)


puts "Total revenue from year is: #{total_revenu}"
puts "Average store revenue is: #{average_revenue}"
puts "Stores that exceeded $1 Million in revenue"
@over_target.each do |store|
  puts "#{store.name} had annual revenue of #{store.annual_revenue}"
end






