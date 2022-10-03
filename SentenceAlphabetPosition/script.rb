input_string = 'The sunset sets at twelve o\' clock.'
puts input_string

def alphabet_position(string)
  first_letter_code = 'a'.ord
  last_letter_code = 'z'.ord

  "#{string
       .downcase
       .split('')
       .map { |letter| letter.ord }
       .select { |letter_code| letter_code >= first_letter_code && letter_code <= last_letter_code }
       .map { |letter_code| letter_code - first_letter_code + 1 }}
  ".gsub(",", "")
end

puts alphabet_position(input_string)