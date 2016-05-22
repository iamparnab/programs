n,str1,m,str2 = gets.to_i, gets.chomp.split(" ").map(&:to_i) , gets.to_i , gets.chomp.split(" ").map(&:to_i)

arr = []

str1.each do |num| arr[num] = arr[num].nil? ? 1 : arr[num] += 1 end
str2.each do |num| arr[num] = arr[num].nil? ? -1 : arr[num] -= 1 end

(str1.min < str2.min ? str1.min : str2.min).upto(str1.max > str2.max ? str1.max : str2.max) do |i|
    print "#{i } " if !arr[i].nil? && arr[i] != 0
end
