# rubocop:disable LineLength

def total_palabras(archivo)
  arreglo = leer_arachivo(archivo)
  counter = arreglo.inject(0) { |acumulador, linea| linea.split.length + acumulador }
  counter
end

def leer_arachivo(archivo)
  file = File.open(archivo, 'r')
  arreglo = file.readlines
  file.close
  arreglo
end



puts total_palabras('peliculas.txt')

# rubocop:enable LineLength
