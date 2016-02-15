require 'test_helper'

class AnagramDetectorTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
	
	test "should be an anagram (words)" do
		anagram = AnagramDetector.new(first_text:"amor", second_text:"roma")
		assert anagram.isAnagram, "The two texts should match as an anagram"
	end
	
	test "should NOT be an anagram (words)" do
		anagram = AnagramDetector.new(first_text:"eee", second_text:"ii")
		assert_not anagram.isAnagram, "The two texts should not match as an anagram"
	end
	
	test "should NOT be an anagram (phrase)" do
		anagram = AnagramDetector.new(first_text:"my name", second_text:"your name")
		assert_not anagram.isAnagram, "The two phrases should not match as an anagram"
	end
	
	test "should be an anagram (phrase)" do
		anagram = AnagramDetector.new(first_text:"my name is amor", second_text:"my name is roma")
		assert anagram.isAnagram, "The two phrases should not match as an anagram"
	end
	
	test "should be an anagram (phrase) in Camel case" do
		anagram = AnagramDetector.new(first_text:"Bad credit", second_text:"Debit card")
		assert anagram.isAnagram, "The two phrases should match as an anagram"
	end
	
	test "should be an anagram (phrase) in Capital" do
		anagram = AnagramDetector.new(first_text:"ABROAD", second_text:"DAORBA")
		assert anagram.isAnagram, "The two phrases should match as an anagram"
	end
end
