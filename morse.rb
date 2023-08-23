require_relative 'morse_to_alphabet'

def decode_character(character_in_morse_code)
  MORSE_CODE[character_in_morse_code]
end

def decode_word(word_in_morse_code)
  word_array = word_in_morse_code.split
  message = []
  word_array.each do |character|
    message.push decode_character character
  end
end

def decode_entire_message(decode_entire_message)
  message_array = decode_entire_message.split('  ')
  message = []
  message_array.each do |word|
    message.push decode_word word
  end
  new_message = message.join(' ')
  print new_message
end

decode_entire_message('-- -.--   -. .- -- .')
decode_entire_message('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
