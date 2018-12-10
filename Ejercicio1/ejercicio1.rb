# rubocop:disable AsciiComments
# rubocop:disable LineLength
# rubocop:disable For

# 1. Crear un método que reciba dos strings, este método creará un archivo
# index.html y pondrá como párrafo cada uno de los strings recibidos.

def html_strings(str1, str2)
  File.open('ejercio1.html', 'a') { |page| page.puts str1 + ' <br>' + str2 + ' <br>' }
end

html_strings('Buenas', 'tardes')

# 2. Crear un método similar al anterior, que además pueda recibir un arreglo. Si
# el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada
# con cada uno de los elementos.

def html_array(arr)
  File.open('ejercio1.html', 'a') { |page| arr.each { |e| page.puts e.to_s + ' <br>' } } unless arr.nil?
end

arr = []
for i in 0..10 do
  arr.push(i)
end
html_array(arr)

# rubocop:enable AsciiComments
# rubocop:enable LineLength
# rubocop:enable For
