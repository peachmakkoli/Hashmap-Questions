def palindrome_permutation?(string)
  return true if string.empty?
  
  # adds each char in string to the hash table
  lookup_hash = {}
  string.each_char do |char|
    lookup_hash[char] ? lookup_hash[char] = false : lookup_hash[char] = true
  end

  if string.length.even? # the palindrome should have two of each letter 
    return lookup_hash.length == string.length / 2
  elsif string.length.odd? # the palindrome should have only one odd letter out
    return lookup_hash.length == (string.length / 2) + 1
  end
end