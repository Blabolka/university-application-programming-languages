def get_word_entries(input_string)
  result = Hash.new
  input_string_words = input_string.downcase.scan(/[a-z']+/)
  input_string_words.each do |word|
    if result.key? word
      result[word] += 1
    else result[word] = 1
    end
  end

  result.sort_by {|k,v| v}.reverse
end

$/ = "\n\n"
puts "Input the string:"
input = STDIN.gets.gsub("\n", ' ').squeeze(' ')
words_hash = get_word_entries(input)
if words_hash.empty?
  puts "\nThere is not a single word in the text"
else
  puts "\nTop results: "
  words_hash[0..2].each do |k,v|
    puts "Word [#{k}] -> #{v} times"
  end
end