require_relative 'data.rb'
require_relative 'menu.rb'
require_relative 'methods.rb'

arr_hash = transform_file('products.txt')
print "#{arr_hash}\n"
