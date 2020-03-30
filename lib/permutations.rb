
def permutations?(string1, string2)
  # return true if strings are equal; return false if the strings are not the same length
  return true if string1 == string2
  return false if string1.length != string2.length

  # add each char from string1 to the hash table
  lookup_hash = {}
  string1.each_char do |char|
    if lookup_hash[char]
      lookup_hash[char] = false
    else
      lookup_hash[char] = true
    end
  end
  # lookup each char in string2 in the hash table; if it's found, return true; else return false
end