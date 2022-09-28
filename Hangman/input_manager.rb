def input_letter
  letter = ''
  while !letter or (letter and letter.length < 1)
    letter = STDIN.gets.chomp.encode('UTF-8')[0]
  end
  letter
end