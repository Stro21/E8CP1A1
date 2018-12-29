# rubocop:disable LineLength

def read_file(txt)
  data = File.open(txt, 'r') { |file| file.readlines.map(&:chomp) }
  array = []
  data.each { |arr| array.push(arr.split(' ')) }
  array.flatten
end

# def cantidad_palabra_repetidas(archivo, palabra)
#   arreglo = read_file(archivo)
#   counter = arreglo.inject(0) { |acumulador, linea| linea.split.length + acumulador if acumulador == palabra }
#   counter
# end

words = read_file('peliculas.txt')
print "#{words}\n"

# rubocop:enable LineLength
