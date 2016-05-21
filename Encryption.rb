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

M = Array.new(rows).fill([])
0.upto(rows - 1) do |i|
    arr = []
    0.upto(cols - 1) do |j|
        arr[j] = str[_i]
        _i += 1
    end
    M[i] = arr
end
0.upto(cols - 1) do |j|
    0.upto(rows - 1)do |i|
        print M[i][j]
    end
    print " "
end