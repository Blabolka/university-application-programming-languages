variants = %w(Rock Scissors Paper)
comp_chosen_variant_number = rand(3)
print 'Your turn (0 - rock, 1 - scissors, 2 - paper): '
user_chosen_variant = gets.to_i
puts ''
if user_chosen_variant < 0 || user_chosen_variant > 2
  puts 'Enter correct data!'
else
  puts 'Computer turn: ' + variants[comp_chosen_variant_number]
  puts 'Your turn: ' + variants[user_chosen_variant]
  if user_chosen_variant === comp_chosen_variant_number
    puts 'Draw'
  elsif (user_chosen_variant === 0 && comp_chosen_variant_number === 1) ||
    (user_chosen_variant === 1 && comp_chosen_variant_number === 2) ||
    (user_chosen_variant === 2 && comp_chosen_variant_number === 0)
    puts 'YOU WIN!'
  else
    puts 'YOU LOSE!'
  end
end