puts 'ENTER FIRST NUMBER:'

# Change from STDIN.gets.chomp.to_i to STDIN.gets.chomp.to_f and divide by zero to got ZeroDivisionError
first_number = STDIN.gets.chomp.to_f

puts 'ENTER OPERATOR (+ - * /):'
operation = STDIN.gets.chomp

puts 'ENTER SECOND NUMBER:'
second_number = STDIN.gets.chomp.to_f

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
