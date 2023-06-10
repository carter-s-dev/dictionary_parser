require 'minitest/autorun'
require_relative 'dictionary_words'

class DictionaryWordsTest < Minitest::Test
  def setup
    @test = DictionaryWords.new
  end

  def test_parse_dictionary_with_unique_sequences
    file_name = 'files/test/dictionary_unique_sequences.txt'
    expected_sequences = ['carr', 'rrot', 'rots', 'give', 'rrow', 'rows']
    expected_words = ['carrots', 'carrots', 'carrots', 'give', 'arrows', 'arrows']

    sequences, words = @test.parse_dictionary(file_name)

    assert_equal expected_sequences, sequences
    assert_equal expected_words, words
  end

  def test_parse_dictionary_with_repeated_sequences
    file_name = 'files/test/dictionary_repeated_sequences.txt'
    expected_sequences = ['yell', 'fell', 'jell', 'elly', 'hell', 'ello']
    expected_words = ['yellow', 'fellow', 'jelly', 'jelly', 'hello', 'hello']

    sequences, words = @test.parse_dictionary(file_name)

    assert_equal expected_sequences, sequences
    assert_equal expected_words, words
  end

  def test_parse_dictionary_with_empty_file
    file_name = 'files/test/dictionary_empty.txt'
    expected_sequences = []
    expected_words = []

    sequences, words = @test.parse_dictionary(file_name)

    assert_equal expected_sequences, sequences
    assert_equal expected_words, words
  end

  def test_parse_dictionary_with_non_alphabetic_characters
    file_name = 'files/test/dictionary_non_alphabetic.txt'
    expected_sequences = []
    expected_words = []

    sequences, words = @test.parse_dictionary(file_name)

    assert_equal expected_sequences, sequences
    assert_equal expected_words, words
  end

  def test_parse_dictionary_with_mixed_casing
    file_name = 'files/test/dictionary_mixed_casing.txt'
    expected_sequences = ['appl', 'pple', 'pear', 'oran', 'rang', 'ange']
    expected_words = ['Apple', 'Apple', 'PEAR', 'OranGe', 'OranGe', 'OranGe']

    sequences, words = @test.parse_dictionary(file_name)

    assert_equal expected_sequences, sequences
    assert_equal expected_words, words
  end

  def test_parse_dictionary_with_short_words
    file_name = 'files/test/dictionary_short_words.txt'
    expected_sequences = []
    expected_words = []

    sequences, words = @test.parse_dictionary(file_name)

    assert_equal expected_sequences, sequences
    assert_equal expected_words, words
  end

  def test_contains_numbers_or_special_characters_with_special_characters
    str = "Isn't"
    assert @test.contains_numbers_or_special_characters?(str)
  end

  def test_contains_numbers_or_special_characters_with_numbers
    str = '14th'
    assert @test.contains_numbers_or_special_characters?(str)
  end

  def test_contains_numbers_or_special_characters_with_alphabetic_characters
    str = 'Arrows'
    refute @test.contains_numbers_or_special_characters?(str)
  end
end
