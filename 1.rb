gets.to_i.times do
    n,a,b, = gets.to_i,gets.to_i,gets.to_i
    f = 0
    l = 0
    (n-1).times do f += a ; l += b end
    if f == l  
        print f
    else
        (f < l ? f : l).step((f > l ? f : l),(b - a).abs) do|ele| print "#{ele} " end
    end
    puts ""
end        