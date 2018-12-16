# rubocop:disable AsciiComments
# rubocop:disable LineLength
# rubocop:disable For

# 1. Crear un método que reciba dos strings, este método creará un archivo
# index.html y pondrá como párrafo cada uno de los strings recibidos.

def html_strings(str1, str2)
  File.open('ejercio1.html', 'a') { |page| page.puts '<p>' + str1 + '</p>' + '<p>' + str2 + '</p>' }
end

html_strings('Buenas', 'Chao')

# 2. Crear un método similar al anterior, que además pueda recibir un arreglo. Si
# el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada
# con cada uno de los elementos.

def html_array(arr)
  File.open('ejercio1.html', 'a') { |page| arr.each { |e| page.puts '<p>' + e.to_s + '</p>' } } unless arr.nil?
end

arr = []
for i in 0..10 do
  arr.push(i)
end
html_array(arr)

# 3. Crear un tercer método que además pueda recibir un color. Agregar color de fondo
# a los párrafos.

def color(color)
  file = File.open('ejercio1.html', 'a')
  file.puts '<br>'
  file.puts '<head>'
  file.puts '<style>'
  file.puts 'p {'
  file.puts 'background-color: ' + color + ';'
  file.puts '}'
  file.puts '</style>'
  file.puts '<head>'
end

color('yellow')

# rubocop:enable AsciiComments
# rubocop:enable LineLength
# rubocop:enable For
