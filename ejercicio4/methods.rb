# rubocop:disable LineLength

require_relative 'menu.rb'

def total_products(data)
  data.each { |prod| puts "El producto #{prod[prod.keys[0]]} tiene un total de stock de #{sum_prod(prod)}." }
end

def sum_prod(hash)
  t1 = nr_to_int(hash, :tienda1)
  t2 = nr_to_int(hash, :tienda2)
  t3 = nr_to_int(hash, :tienda3)
  t1 + t2 + t3
end

def nr_to_int(hash, key)
  if hash[key] == 'NR'
    0
  else
    hash[key]
  end
end

# rubocop:enable LineLength
