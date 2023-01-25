test_string = String.new("Bob hit a ball; the hit BALL flew far after it was hit.")
puts test_string
test_string_array = test_string.split(" ")

freq_map = Hash.new{0}

test_string_array.each do |word|
    freq_map[word] +=1
end
x= freq_map.key(freq_map.values.max)
puts x




