require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

module StoreValidations
extend ActiveSupport::Concern

included do
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { greater_than: 0 }
end

end

module EmployeeValidations
extend ActiveSupport::Concern

included do
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end
end

class Stores < ActiveRecord::Base
  include StoreValidations

  has_many :employees, class_name: 'Employee', foreign_key: 'store_id'
end

class Employee < ActiveRecord::Base
  include EmployeeValidations

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