# word = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

puts 'This is the Ceaser Cipher Decoder'
puts 'Type a KEY:'
key = gets.chomp.to_i
puts 'Type the phrase:'
word = gets.chomp

def decode_cipher(word, key)
  length = word.length - 1
  (0..length).each do |index|
    word[index] = chiper_shift(word[index], -key)
  end
  word
end

def chiper_shift(char, key)
  char_ascii = char.ord
  if char_ascii.between?(97, 122)
    ((((char_ascii - 97) + key) % 26) + 97).chr
  elsif char_ascii.between?(65, 90)
    ((((char_ascii - 65) + key) % 26) + 65).chr
  else
    char
  end
end

puts "original phrase: KEY:#{key}"
puts decode_cipher(word, key)
