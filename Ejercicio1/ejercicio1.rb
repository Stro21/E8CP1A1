# rubocop:disable AsciiComments

# 1. Crear un método que reciba dos strings, este método creará un archivo
# index.html y pondrá como párrafo cada uno de los strings recibidos.

def html_strings(str1, str2)
  File.open('2_strings.html', 'a') { |text| text.puts str1 + ' ' + str2 }
end

html_strings('Buenas', 'tardes')

# rubocop:enable AsciiComments
