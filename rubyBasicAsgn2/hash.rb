# An example hash.
hash = { "b" => 2,"a" => 1, "c" => 3}

# Convert keys into a string.
result = hash.keys.join
print "KEYS: ", result, "\n"

# Convert values into a string.
result = hash.values.join
print "VALUES: ", result, "\n"

# Checking whether hash is empty or not.
ans=hash.empty?
puts ans

#hash.delete_if { |"b",2| block }
#hash.select{|key, hash| hash["a"] == "1" }

# Returning values according to keys
puts hash.key(2) #=> "b"
puts hash.key(10) #=> nil

# Convert entire hash into an array.
elements = hash.to_a
print "ARRAY LENGTH: ", elements.length, "\n"
print "ARRAY       : ", elements, "\n"



