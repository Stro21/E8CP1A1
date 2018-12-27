# rubocop:disable LineLength

def total_palabras(archivo)
  arreglo = leer_archivo(archivo)
  counter = arreglo.inject(0) { |acumulador, linea| linea.split.length + acumulador }
  counter
end

def leer_archivo(archivo)
  arreglo = File.open(archivo, 'r') { |file| file.readlines.map(&:chomp) }
  print "#{arreglo}\n"
  array = []
  arreglo.each { |arr| array << arr.split(' ') }
  print "#{array}\n"
  array
end

def cantidad_palabra_repetidas(archivo, palabra)
  arreglo = leer_archivo(archivo)
  counter = arreglo.inject(0) { |acumulador, linea| linea.split.length + acumulador if acumulador == palabra }
  counter
end

puts total_palabras('peliculas.txt')
puts cantidad_palabra_repetidas('peliculas.txt', 'Guerra')

# rubocop:enable LineLength
