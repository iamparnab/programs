File.open(ARGV[0]).each_line do |line|
	expr,regex = gets.chomp.split(",")
	i = 0
	while i < regex.length do 
		if regex[i] == "*" && regex[i - 1] != "\\"
			part1 = regex[0...i]
			part2 = "\\w"
			part3 = regex[i..-1]
			regex = part1 << part2 << part3
			i += 2
		end
		i += 1
	end
	puts expr.match(regex) ? true : false
end
