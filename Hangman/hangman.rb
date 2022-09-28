require_relative './words.rb'
require_relative './input_manager.rb'

random_hangman_word = get_random_word

guessed_hangman_words_number = 0
guessed_hangman_word = ''
random_hangman_word.split('').each do
  guessed_hangman_word += '_'
end

number_of_wrong_inputs = 0

while number_of_wrong_inputs < 7
  print 'Word: '
  puts guessed_hangman_word

  print 'Mistakes: '
  puts number_of_wrong_inputs

  puts 'Letter: '
  letter = input_letter

  print 'Your letter: '
  puts letter
  puts ''

  at_least_one_letter_was_guess = false
  random_hangman_word.split('').each_with_index do |i, index|
    if letter === i
      at_least_one_letter_was_guess = true
      guessed_hangman_words_number += 1
      guessed_hangman_word[index] = i
    end
  end

  if guessed_hangman_words_number === random_hangman_word.length
    puts 'You win!'
    break
  elsif !at_least_one_letter_was_guess
    number_of_wrong_inputs += 1

    if number_of_wrong_inputs >= 7
      puts 'You died!'
    end
  end
end
