x = 29
case
when x < 29 then puts "#{x} is less than 29"
when x == 29 then puts "#{x} is equal to 29"
when x > 29 then puts "#{x} is greater than 29"
end

# You can use the = operator along with == but
# if will change the value of the variable

x = 17
case x
when 0..28 then puts "#{x} is less than 29"
when 29 then puts "#{x} is equal to 29"
when 30..50 then puts "#{x} is greater than 29"
else puts "not a correct value: #{x}."
end
