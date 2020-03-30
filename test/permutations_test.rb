require_relative "test_helper"

describe "permutations?" do
  it "returns true for empty string" do
    expect(permutations?("", "")).must_equal true
  end

  it "returns true for 'hello', 'ehllo'" do
    expect(permutations?("hello", "ehllo")).must_equal true
  end

  it "returns true for 'pasta', 'atsap'" do
    expect(permutations?("pasta", "atsap")).must_equal true
  end

  it "returns true for 'pizza', 'pizza'" do
    expect(permutations?("pizza", "pizza")).must_equal true
  end

  it "returns false for 'pizza', 'pasta'" do
    expect(permutations?("pizza", "pasta")).must_equal false
  end

  # this test was passing superficially because my method returned false if the strings were different lengths; I modified the second test string so it would still meet the conditions but not trigger line 4 in the method
  it "returns false if the number of a specific letter are different" do
    expect(permutations?("pizza", "pizaa")).must_equal false
  end
  
  # see above comment
  it "returns false if the strings are of different lengths" do
    expect(permutations?("pizza", "piza")).must_equal false
  end
end