gets.to_i.times do
    r,c = gets.split(" ").map(&:to_i)
    matrix = []
    r.times do
        matrix.push(gets.chomp.split(""))
    end
    #puts "#{matrix}"
    tr,tc = gets.split(" ").map(&:to_i)
    test_matrix = []
    tr.times do
        test_matrix.push(gets.chomp.split(""))
    end
    #puts "#{test_matrix}"
    catch :out do
    0.upto(r - tr) do |i|
        0.upto(c - tc) do |j|
            status = true
            tr.times do |_i|
                #puts "From Main #{matrix[i+_i][j..(j+tc-1)]} From Test #{test_matrix[_i]}" 
                if matrix[i+_i][j..(j+tc-1)] != test_matrix[_i]
                    status = false
                    break
                end
            end
            if status
                puts "YES"
                throw :out
            end
        end
    end
    puts "NO"
    end
end              
