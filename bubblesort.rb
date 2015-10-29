def bubble_sort(array)
    for i in 0..array.length - 1 do
        p = array[i - 1]
        n = array[i]
        if p > n
            p, n = n, p
        end
    end
    return array
end
            
                
                
x = Array.new
4.times { x << rand(10) }
bubble_sort(x)