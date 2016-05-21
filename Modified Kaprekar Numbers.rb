ll , ul = gets.to_i , gets.to_i
flag = false
ll.upto(ul) do |tc|
    lls = "#{tc ** 2}"
    if tc == 1
        print "#{tc} "
        flag = true
    elsif lls.length >= 2
        lls = lls.chars.each_slice(lls.length/2).map(&:join)
        if lls.length > 2
            sum = lls[0].to_i + "#{lls[1]}#{lls[2]}".to_i
            if sum == tc
                print "#{tc} "
                flag = true
            end
        else
            sum = lls[0].to_i + lls[1].to_i
            if sum == tc
                print "#{tc} "
                flag = true
            end
        end
    end
end
puts "INVALID RANGE" if !flag