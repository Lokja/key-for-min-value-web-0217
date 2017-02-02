# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value


# hash = {:blake => 100, :ashley => 50, :adam => 17}

def key_for_min_value(hash)
  min_key = nil
  i = 0
  last_val = 0
  hash.each do |key, val|
    if i == 0
      last_val = val
      i += 1
      min_key = key
    else
      if val <= last_val
        min_key = key
      end
    end
  end
  min_key
end
