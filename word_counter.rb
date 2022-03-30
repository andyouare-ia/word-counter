FILE_NAME = 'romeo-juliet.txt'

# Load only words from the file
def words_from_file(text_file)
  File.read(text_file).downcase.gsub(/[^a-z]/, ' ').split
rescue
  puts 'Please insert the correct .txt file'
  exit
end

# Load the list of words in the text
words = words_from_file(FILE_NAME)

# Create a hash to store word counts
word_count = {}

# Iterate through the array to get the word count
words.each do |word|
  word_count[word] ? word_count[word] += 1 : word_count[word] = 1
end

# Show each word and the times it appears in the text
word_count.sort_by { |word, count| count }
          .reverse
          .each { |word, count| puts "#{word}: #{count}" }
