def intersection(list1, list2)
  # define which array is the smallest and which is the largest
  list1.length < list2.length ? (smaller, larger = list1, list2) : (smaller, larger = list2, list1)
  
  # Add each element from the smaller array to the hash table
  lookup_hash = {}
  smaller.each do |num|
    if lookup_hash[num]
      lookup_hash[num] = false
    else
      lookup_hash[num] = true
    end
  end

  # Lookup each element in the larger array in the hash table; if it’s found in the hash table, add it to the results array
  results = []
  larger.each do |num|
    results << num if lookup_hash[num]
  end

  return results
end