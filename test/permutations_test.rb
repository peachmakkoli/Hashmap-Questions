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

  it "returns false for 'pizza', 'pasta'" do
    expect(permutations?("pizza", "pasta")).must_equal false
  end

  # this test was passing superficially because of line 4 in my method; I added a follow-up test below
  it "returns false if the number of a specific letter are different" do
    expect(permutations?("pizza", "piza")).must_equal false
  end

  it "returns false if the number of a specific letter are different but the string lengths are the same" do
    expect(permutations?("pizza", "pizaa")).must_equal false
  end
end