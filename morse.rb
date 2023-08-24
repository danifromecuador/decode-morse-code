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
  new_message = ''
  message.split('  ').each do |word|
    new_message += "#{decode_word(word)} "
  end
  new_message
end

puts decode_message('.- .... --- .-. .-  .- .-..  ..-. .. -.  ...- ..- . .-.. ...- ---  .-  ... . .-.  -.-- --- ')
