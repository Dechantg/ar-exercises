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




print "Enter a new store name: "
new_store_name = gets.chomp

print "Enter Annual Revenue: "
new_store_revenue = gets.chomp.to_i



print "Does the store carry men's apparel? Yes/No: "
new_store_men_apparel = nil

loop do
  input = gets.chomp.downcase

  if input == "yes"
    new_store_men_apparel = true
    break
  elsif input == "no"
    new_store_men_apparel = false
    break
  else
    puts "Invalid input. Please enter 'Yes' or 'No'."
    print "Does the store carry men's apparel? Yes/No: "
  end
end

print "Does the store carry women's apparel? Yes/No: "
new_store_women_apparel = nil

loop do
  input = gets.chomp.downcase

  if input == "yes"
    new_store_women_apparel = true
    break
  elsif input == "no"
    new_store_women_apparel = false
    break
  else
    puts "Invalid input. Please enter 'Yes' or 'No'."
    print "Does the store carry women's apparel? Yes/No: "
  end
end



stores = Stores.new
stores.name = new_store_name
stores.annual_revenue = new_store_revenue
stores.mens_apparel = new_store_men_apparel
stores.womens_apparel = new_store_women_apparel
if stores.save
  puts "Store saved successfully!"
else
  puts "Error saving store:"
  stores.errors.full_messages.each do |error|
    puts error
  end
end