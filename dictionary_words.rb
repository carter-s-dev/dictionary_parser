class DictionaryWords

  def parse_dictionary(file_name)
    sequences = {}
    words = {}

    File.foreach(file_name) do |line|
      word = line.chomp.downcase
      next if word.length < 4 || contains_numbers_or_special_characters?(word)

      (0..word.length - 4).each do |i|
        sequence = word[i, 4]
        if sequences[sequence] #checks if the sequence is present in the sequences hash
          sequences.delete(sequence)
          words.delete(sequence)
        elsif !sequences.key?(sequence) #checks if the sequence is not present in the sequences hash
          sequences[sequence] = true
          words[sequence] = line.chomp
        end
      end
    end

    [sequences.keys, words.values]
  end

  def contains_numbers_or_special_characters?(str)
    # Regular expression to match numbers or special characters
    pattern = /[0-9!@#$%^&*(),.?":{}|<>']/
    # Check if the string matches the pattern
    !str.match(pattern).nil?
  end


  def write_file(file_name, content)
    File.open(file_name, 'w') { |file| file.puts(content) }
  end

  def generate_parsed_files(dictionary_file)
    sequences, words = parse_dictionary(dictionary_file)
    write_file('files/sequences', sequences)
    write_file('files/words', words)
  end

end