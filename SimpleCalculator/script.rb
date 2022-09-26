puts 'ENTER FIRST NUMBER:'

first_number = STDIN.gets.chomp.to_i

puts 'ENTER OPERATOR (+ - * /):'
operation = STDIN.gets.chomp

puts 'ENTER SECOND NUMBER:'
second_number = STDIN.gets.chomp.to_i

puts 'RESULT:'

case operation
when '+'
  puts first_number + second_number
when '-'
  puts first_number - second_number
when '*'
  puts first_number * second_number
when '/'
  begin
    puts first_number / second_number
  rescue ZeroDivisionError => error
    puts error.message
  end
else
  puts 'Wrong operator'
end
