def permutations?(string1, string2)
  # return true if strings are equal; return false if the strings are not the same length
  return true if string1 == string2
  return false if string1.length != string2.length
  
  # add each char from string1 to the hash table
  lookup_hash = {}
  letter_count1 = {}
  string1.each_char do |char|
    if lookup_hash[char]
      lookup_hash[char] = false
    else
      lookup_hash[char] = true
    end

    if letter_count1[char]
      letter_count1[char] += 1
    else
      letter_count1[char] = 0
    end
  end

  letter_count2 = {}
  string2.each_char do |char|
    if letter_count2[char]
      letter_count2[char] += 1
    else
      letter_count2[char] = 0
    end
  end

  # returns false if the number of a specific letter are different, but the string lengths are the same
  return false if letter_count1 != letter_count2

  # lookup each char in string2 in the hash table; if the value of lookup_hash[num] is nil, return false; else return true
  string2.each_char do |char|
    return false if lookup_hash[char].nil?
  end

  return true
end