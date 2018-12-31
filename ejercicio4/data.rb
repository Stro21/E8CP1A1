# rubocop:disable AbcSize
# rubocop:disable MethodLength

def read_file(txt)
  data = File.open(txt, 'r') { |file| file.readlines.map(&:chomp) }
  array = []
  data.each { |arr| array.push(arr.split(', ')) }
  array
end

def create_hash(*arr)
  hash = {}
  hash[:name] = arr[0]
  hash[:tienda1] = if nr?(arr[1])
                     arr[1]
                   else
                     arr[1].to_i
                   end
  hash[:tienda2] = if nr?(arr[2])
                     arr[2]
                   else
                     arr[2].to_i
                   end
  hash[:tienda3] = if nr?(arr[3])
                     arr[3]
                   else
                     arr[3].to_i
                   end
  hash
end

def transform_file(txt)
  data = read_file(txt)
  products = []
  data.each { |d| products << create_hash(*d) }
  products
end

def add_product(data, txt)
  puts 'Ingrese nombre del producto.'
  name = gets.chomp
  puts 'Ingrese la cantidad en la tienda 1'
  t1 = gets.chomp
  puts 'Ingrese la cantidad en la tienda 2'
  t2 = gets.chomp
  puts 'Ingrese la cantidad en la tienda 3'
  t3 = gets.chomp
  data << create_hash(name, t1, t2, t3)
  File.open(txt, 'a') { |file| file.puts "#{name}, #{t1}, #{t2}, #{t3}" }
  data
end

def nr?(str)
  str == 'NR'
end

# rubocop:enable AbcSize
# rubocop:enable MethodLength
