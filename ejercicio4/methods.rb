# rubocop:disable LineLength
# rubocop:disable AbcSize

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

def store_stock(data)
  t1 = 0
  t2 = 0
  t3 = 0
  data.each do |store|
    t1 += nr_to_int(store, :tienda1)
    t2 += nr_to_int(store, :tienda2)
    t3 += nr_to_int(store, :tienda3)
  end
  store = [t1, t2, t3]
  store.each_with_index { |st, ind| puts "La tienda#{ind + 1} tiene #{st} de stock total." }
end

def total_stock(data)
  total = 0
  data.each { |hash| total += sum_prod(hash) }
  puts "La existencia total en todas las tiendas es #{total}."
end

def correct_search(data, name)
  data.each { |prod| return true if prod[:name] == name }
  false
end

def get_index(data, name)
  id = 0
  data.each do |prod|
    return id unless prod[:name] != name

    id += 1
  end
end

def warehouse_nr(data)
  t1 = []
  t2 = []
  t3 = []
  data.each do |prod|
    t1 << prod[:name] if prod[:tienda1] == 'NR'
    t2 << prod[:name] if prod[:tienda2] == 'NR'
    t3 << prod[:name] if prod[:tienda3] == 'NR'
  end
  store = [t1, t2, t3]
  store.each_with_index { |sto, id| print "Tienda #{id + 1}: #{sto}\n" unless sto == [] }
end

def stock_less_than(data, num)
  data.each { |prod| puts prod[:name] if num > sum_prod(prod) }
end

# rubocop:enable LineLength
# rubocop:enable AbcSize
