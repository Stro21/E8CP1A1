require_relative 'data.rb'
require_relative 'menu.rb'

arr_hash = transform_file('products.txt')
options(arr_hash)
