require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Stores < ActiveRecord::Base
end

stores = Stores.new
stores.name = "Burnaby"
stores.annual_revenue = 300000
stores.mens_apparel = true
stores.womens_apparel = true
stores.save

stores = Stores.new
stores.name = "Richmond"
stores.annual_revenue = 1260000
stores.mens_apparel = false
stores.womens_apparel = true
stores.save

stores = Stores.new
stores.name = "Gastown"
stores.annual_revenue = 190000
stores.mens_apparel = true
stores.womens_apparel = false
stores.save

