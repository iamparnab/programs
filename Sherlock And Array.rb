gets.to_i.times do
    N, arr = gets.to_i, gets.split(" ").map(&:to_i)
    bsum = arr[0]
    begin
        esum = arr[2..(arr.length-1)].inject{ |sum,x| sum += x}
        catch :outer do
        1.upto(arr.length-2) do |i|
            if bsum == esum
                puts "YES"
                throw :outer
            else
                bsum += arr[i]
                esum -= arr[i+1]
            end
        end
        puts "NO"
    end
    rescue NoMethodError => e 
        puts "YES"
    end
end