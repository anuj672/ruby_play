s =String.new("Eyes")
vow = []
not_vow = []
s.scan(/[AEIOUaeiou]/) do |x| 
    vow.push(x)
end
s.scan(/[^AEIOUaeiou]/) do |x| 
    not_vow.push(x)
end
vow_string = vow.join
not_vow_string = not_vow.join
ans = not_vow_string + vow_string
puts ans


