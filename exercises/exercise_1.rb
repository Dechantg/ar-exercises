require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Stores < ActiveRecord::Base
  has_many :employees, class_name: 'Employee', foreign_key: 'store_id'
end

class Employee < ActiveRecord::Base
  belongs_to :store, class_name: 'Stores', foreign_key: 'id'
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

stores_count = Stores.count
puts "The number of stores in the table now is #{stores_count}"