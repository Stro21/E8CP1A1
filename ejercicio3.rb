# rubocop:disable LineLength

def total_palabras(archivo)
  file = File.open(archivo, 'r')
  arreglo = file.readlines
  file.close
  counter = arreglo.inject(0) { |acumulador, linea| linea.split.length + acumulador }
  counter
end

puts total_palabras('peliculas.txt')

# rubocop:enable LineLength
