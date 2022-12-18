def matrix_params(arr)
    m = 0
    u = 0
    o = 0
    for i in 0...arr.length do
        for j in 0...arr[i].length do
           
            if i == j
                m += arr[i][j]
            elsif i < j
                u += arr[i][j]
            else
                o += arr[i][j]
            end
        end
    end
    {"m" => m, "u" => u, "o" => o}
end


puts(matrix_params([[1,2,3],[4,5,6],[7,8,9]])) # {"m"=>15, "u"=>11, "o"=>19}