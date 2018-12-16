def total_lineas_archivo(archivo)
  file = File.open(archivo, 'r')
  movies = file.readlines
  file.close
  puts 'La cantidad total de lineas del archivo es ' + movies.length.to_s
end

total_lineas_archivo('starwars.txt')
