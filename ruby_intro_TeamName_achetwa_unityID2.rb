# Part 1
def two_sum?(a, n)
  # ADD YOUR CODE HERE
end

def max_sub_array(a)
  # ADD YOUR CODE HERE
end

def group_anagrams(a)
  # ADD YOUR CODE HERE
end

# Part 2
def brackets_match?(s)
  st_br=[] #declare array which can be used as stack
  s.each_char do |x| #iterate through each bracket
    y = st_br[-1] # get the bracket at the top of the stack
    if y == ']' || y == ')' || y == '}' # closing for no opening
      return false
    end  
    if x == ']' && y == '[' ||
        x == ')' && y == '(' ||
        x == '}' && y == '{' || 
      st_br.pop
    else
      st_br.push(x)
    end
  end        
return st_br.empty? 
end

def remove_and_append_vowels(s)
  vow = []
  not_vow = []
  s.scan(/[AEIOUaeiou]/) do |x| #check if vowels
    vow.push(x)
  end
  s.scan(/[^AEIOUaeiou]/) do |x|  #check if not a vowel
    not_vow.push(x)
  end
  vow_string = vow.join 
  not_vow_string = not_vow.join
  ans = not_vow_string + vow_string
  return ans
  # ADD YOUR CODE HERE
end

def highest_frequency_word(s)
  test_string_array = test_string.split(" ") #split into array
  freq_map = Hash.new{0} #create map with deafult freq as 0
  test_string_array.each do |word| #iterate the array
    freq_map[word] +=1 #calculate teh frequnce
  end
  ans= freq_map.key(freq_map.values.max) #gives the frequency of the most recent word with max occurances 
  return ans  
end

# Part 3
class Book
  # ADD YOUR CODE HERE
end
