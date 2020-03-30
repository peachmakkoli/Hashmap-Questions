
def palindrome_permutation?(string)
  return true if string.empty?
  
  # adds each char in string to the hash table
  lookup_hash = {}
  string.each_char do |char|
    if lookup_hash[char]
      lookup_hash[char] = false
    else
      lookup_hash[char] = true
    end
  end
  
  if string.length.even? # if the string has an even number of characters, the palindrome should have two of each letter
    return true if lookup_hash.length == string.length / 2
  elsif string.length.odd? # if the string has an odd number of characters, the palindrome should have only one odd letter out
    return true if lookup_hash.length == (string.length / 2) + 1
  end

  return false
end