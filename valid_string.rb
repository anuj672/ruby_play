s= String.new("]")
st_br = []
s.chars.each do |x|
  y = st_br[-1]
  if y == ']' || y == ')' || y == '}'
    puts "false" 
  elsif x == ']' && y == '[' ||
      x == '}' && y == '{' ||
      x == ')' && y == '('
    st_br.pop
  else
    st_br.push(x)
  end
end

a = st_br.empty?
puts a

