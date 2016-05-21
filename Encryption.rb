str = gets.chomp.gsub(" ","")
_i = 0
rows = 0
cols = 0
Math.sqrt(str.length).floor.upto(Math.sqrt(str.length).ceil) do |i|
    Math.sqrt(str.length).floor.upto(Math.sqrt(str.length).ceil) do |j|
        rows = i
        cols = j
        break if rows * cols >= str.length
    end
end
min , max = [rows,cols].min , [rows,cols].max
rows , cols = min , max

0.upto(cols - 1) do |i|
    ini = 0
    rows.times do
        print str[i + ini] if !(str[i + ini].nil?)
        ini += cols
    end
    print " "
end
