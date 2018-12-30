# rubocop:disable AbcSize
# rubocop:disable MethodLength

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
  if correct_option(opt)
    if opt == opt.upcase
      send 'option_' + opt.downcase, data
    else
      send 'option_' + opt, data
    end
  else
    puts 'Opción invalida.'
    option1(data)
  end
end

def correct_option(opt)
  %w[a A b B c C d D].include?(opt)
end

# rubocop:enable AbcSize
# rubocop:enable MethodLength
