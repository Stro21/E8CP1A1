archivo = 'peliculas.txt'
file = File.open(archivo, 'r')
movies = file.readlines
file.close
print movies
puts ''
