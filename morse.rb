require_relative 'hash'

def decode_char(char)
  HASH[char]
end

def decode_word(word)
  new_word = ''
  word.split.each do |char|
    new_word += decode_char(char)
  end
  new_word
end

def decode_message(message)
  words = message.split('  ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end

puts decode_message('.- .... --- .-. .-  .- .-..  ..-. .. -.  ...- ..- . .-.. ...- ---  .-  ... . .-.  -.-- --- ')
