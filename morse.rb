require_relative 'morse_to_alphabet'

def decode_character character_in_morse_code
  MORSE_CODE[character_in_morse_code]
end

def decode_word word_in_morse_code
  word_array = word_in_morse_code.split(' ')
  message = []
  for character in word_array
    message.push decode_character character
  end
  new_message = message.join(' ')
end
