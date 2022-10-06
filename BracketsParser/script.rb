require_relative('input_utils')

def is_string_brackets_correct(string, key_value_schema)
  if string.length % 2 != 0
    return false
  end

  closed_brackets_array = []
  string.chars do |char|
    if (closed_bracket_by_open_bracket = key_value_schema[char])
      closed_brackets_array << closed_bracket_by_open_bracket
    elsif closed_brackets_array.pop != char
      return false
    end
  end

  closed_brackets_array.length === 0
end

brackets_key_value_object = {
  '(' => ')',
  '[' => ']',
  '{' => '}',
}
all_brackets_string = brackets_key_value_object.keys + brackets_key_value_object.values
input_string = ''

while 1
  puts 'Enter bracket: '
  letter = input_letter

  unless all_brackets_string.include? letter
    next
  end

  input_string += letter
  puts 'Your string: ' + input_string

  print 'Is string correct: '
  puts is_string_brackets_correct(input_string, brackets_key_value_object)
  puts ''
end