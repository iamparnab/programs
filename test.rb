str = gets.chomp
i = 0
while i < str.length do
    if str[i] == str[i+1]
	   if i == 0
		  str = str[(i+2)..-1]
	   else
		  str = str[0...i]+str[(i+2)..-1]
	   end
       i = 0
	else
		i += 1
	end
end
puts str.length == 0 ? "Empty String" : str
