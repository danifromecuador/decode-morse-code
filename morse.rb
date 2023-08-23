require_relative 'morse_to_alphabet'

def decode_character message_in_morse_code
  MORSE_CODE[message_in_morse_code]
end

puts decode_character '.-'
