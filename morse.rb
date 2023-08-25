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
  counter = 0
  message.split('  ').each do |word|
    counter += 1
    if counter == message.split('  ').length
      new_message += "#{decode_word(word)}"
    else
      new_message += "#{decode_word(word)} "
    end
  end
  new_message
end

puts decode_message('.- .... --- .-. .-  .- .-..  ..-. .. -.  ...- ..- . .-.. ...- ---  .-  ... . .-.  -.-- --- ')
