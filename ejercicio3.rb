# rubocop:disable LineLength

def read_file(txt)
  data = File.open(txt, 'r') { |file| file.readlines.map(&:chomp) }
  array = []
  data.each { |arr| array.push(arr.split(' ')) }
  array.flatten
end

def total_words(file)
  words = read_file(file)
  puts "La cantidad total de palabras es #{words.length}."
end

def word_hash(words)
  hash = {}
  words.each do |word|
    if hash[word].nil?
      hash[word] = 1
    else
      hash[word] += 1
    end
  end
  hash
end

def reapeat_words(file, word)
  words = read_file(file)
  hash = word_hash(words)
  if hash[word].nil?
    puts "La palabra no esta en el texto #{file}"
  elsif hash[word] > 1
    puts "La palabra #{word} esta repetida #{hash[word]} veces en el texto #{file}"
  else
    puts "Sola hay una palabra #{word} en el texto #{file}"
  end
end

total_words('peliculas.txt')
reapeat_words('peliculas.txt', 'Sith')

# rubocop:enable LineLength
