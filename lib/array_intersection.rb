def intersection(list1, list2)
  list1.length < list2.length ? (smaller, larger = list1, list2) : (smaller, larger = list2, list1) # define which array is the smallest and which is the largest
  
  # add each element from the smaller array to the hash table
  lookup_hash = {}
  smaller.each do |num|
    lookup_hash[num] ? lookup_hash[num] = false : lookup_hash[num] = true
  end

  # lookup each element in the larger array in the hash table; add to results array if found
  results = []
  larger.each do |num|
    results << num if lookup_hash[num]
  end

  return results
end