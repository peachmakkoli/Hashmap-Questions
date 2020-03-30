def permutations?(string1, string2)
  return true if string1 == string2
  return false if string1.length != string2.length
  
  # add each char from string1 to the hash table
  lookup_hash = {}
  letter_count1 = {}
  string1.each_char do |char|
    lookup_hash[char] ? lookup_hash[char] = false : lookup_hash[char] = true

    letter_count1[char] ? letter_count1[char] += 1 : letter_count1[char] = 0 # counts how many of each letter are in string1
  end

  # counts how many of each letter are in string2
  letter_count2 = {}
  string2.each_char do |char|
    letter_count2[char] ? letter_count2[char] += 1 : letter_count2[char] = 0
  end

  return false if letter_count1 != letter_count2 # returns false if the number of a specific letter are different but the string lengths are the same (see comment in test file)

  # lookup each char in string2 in the hash table
  string2.each_char do |char|
    return false if lookup_hash[char].nil?
  end

  return true
end