require_relative 'data.rb'
require_relative 'methods.rb'

def options(data)
  puts 'Ingrese un número del 1 al 6 ir a las siguiente opciones:'
  puts 'Opción 1 abre un submenu.'
  puts 'Opción 2 buscar el stock de un producto.'
  puts 'Opción 3 mostrar los productos no registrados en cada bodega.'
  puts 'Opción 4 mostrar los productos que tengan menos stock que el input'
  puts 'Opción 5 permite ingresar un nuevo producto.'
  puts 'Opción 6 te saca del programa.'
  opt = gets.chomp
  select_options(data, opt.to_i)
end

def select_options(data, opt)
  if opt >= 1 && opt <= 5
    send 'option' + opt.to_s, data
  elsif opt == 6
    puts 'Se salió del programa'
  else
    puts 'Opción invalida.'
    options(data)
  end
end

def option1(data)
  puts 'Ingrese letra sea a, b, c o d.'
  puts 'a) Mostrar la existencia por productos.'
  puts 'b) Mostrar la existencia total por tienda.'
  puts 'c) Mostrar la existencia total en todas las tiendas.'
  puts 'd) Volver al menú principal.'
  opt = gets.chomp
  option_1(data, opt)
end

def option_1(data, opt)
  if correct_option(opt)
    option_one(data, opt)
  else
    puts 'Opción invalida.'
    option1(data)
  end
end

def correct_option(opt)
  %w[a A b B c C d D].include?(opt)
end

def option_one(data, opt)
  if %w[d D].include?(opt)
    puts 'Se regresa al menu principal.'
    options(data)
  elsif opt == opt.upcase
    send 'option_' + opt.downcase, data
  else
    send 'option_' + opt, data
  end
end

def option_a(data)
  total_products(data)
  options(data)
end

def option_b(data)
  store_stock(data)
  options(data)
end

def option_c(data)
  total_stock(data)
  options(data)
end

def option2(data)
  puts 'Ingrese un producto a buscar.'
  name = gets.chomp
  if correct_search(data, name)
    i = get_index(data, name)
    puts "La cantidad de productos es #{sum_prod(data[i])}"
    options(data)
  else
    puts 'Ese producto no esta en el stock.'
    option2(data)
  end
end
