gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MapTest < Minitest::Test

  def test_capitalize
    names = ["alice", "bob", "charlie"]
    capitalized_names = names.map do |name|
      name.capitalize #create a new array called capitalized names using names as the base point and then MAP each of the elements to the block which says to capitalize.
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_doubles
    numbers = [1, 2, 3, 4, 5]
    doubles = numbers.map do |number|
      number * 2 # Your code goes here
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    numbers = [1, 2, 3, 4, 5]
    squares = numbers.map do |number| # Your code goes here
      number ** 2
    end
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = names.map do |name| # Your code goes here
      name.length
    end
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    numbers = [234, 10, 9119, 38881]
    zip_codes = numbers.map do |number|  # Your code goes here
      "%05d" % number
    end
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_backwards
    names = ["alice", "bob", "charlie", "david", "eve"]
    backwards = names.map do |name| # Your code goes here
      name.reverse
    end
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels
    words = ["green", "sheep", "travel", "least", "boat"]
    without_vowels = words.map do |word|
      word.delete("aeiou")
    end
    # Your code goes here
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_lette 
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    trimmed = animals.map do |animal|
      animal[0...-1]
    end

    # Your code goes here
    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed
  end

end