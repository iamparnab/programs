gets.to_i.times do
    b,w = gets.split(" ").map(&:to_i)
    x,y,z = gets.split(" ").map(&:to_i)
    _1 = b * x + w * y
    _2 = b * x + w * (x+z)
    _3 = b * (y+z) + w * y
    puts "#{[_1,_2,_3].min}"
end