puts "faker_script.rb"

require 'faker'
require 'csv'
require_relative 'product'
# require_relative 'simple_product'

CSV.open('shopify_data.csv', 'wb') do |csv|
	product = Product.new({})
	csv << product.headers
	5.times do 
		product = Product.new({})
		csv << product.attributes
		csv << product.simple_product_attributes
	end
	puts 'done'
end