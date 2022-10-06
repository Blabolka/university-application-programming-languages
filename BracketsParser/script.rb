require_relative('input_utils')

def is_string_brackets_correct(string)
  if string.length % 2 != 0
    return false
  end

  brackets_key_value_object = {
    '(' => ')',
    '[' => ']',
    '{' => '}',
  }

  closed_brackets_array = []
  string.chars do |char|
    if (closed_bracket_by_open_bracket = brackets_key_value_object[char])
      closed_brackets_array << closed_bracket_by_open_bracket
    elsif closed_brackets_array.pop != char
      return false
    end
  end

  closed_brackets_array.length === 0
end

brackets = '()[]{}'
input_string = ''

while 1
  puts 'Enter bracket: '
  letter = input_letter

  unless brackets.include? letter
    next
  end

  input_string += letter
  puts 'Your string: ' + input_string

  print 'Is string correct: '
  puts is_string_brackets_correct(input_string)
  puts ''
end