def read_file(txt)
  data = File.open(txt, 'r') { |file| file.readlines.map(&:chomp) }
  array = []
  data.each { |arr| array.push(arr.split(', ')) }
  array
end

def create_hash(*arr)
  hash = {}
  hash[:name] = arr[0]
  hash[:tienda1] = arr[1]
  hash[:tienda2] = arr[2]
  hash[:tienda3] = arr[3]
  hash
end

def transform_file(txt)
  data = read_file(txt)
  print "#{data}\n"
  products = []
  data.each { |d| products << create_hash(*d) }
  products
end
