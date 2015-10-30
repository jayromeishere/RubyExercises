def swapper(x, y) #define yield function that acts on two elements
    yield(x, y)
end

def bubble_sort(array)
    swap_count = 0
    for i in 0..(array.length - 2) do
        if swapper(array[i], array[i + 1]) { |f, n| f <=> n } == 1
            array[i], array[i + 1] = array[i + 1], array[i]
            swap_count +=1
        end
    end
    if swap_count > 0
        bubble_sort(array)
    else
        array
    end
end
            
x = Array.new
5.times { x << rand(100) }

puts bubble_sort(x) { |f, n| f <=> n } 

#testing

10.times {
    m = bubble_sort(x)
    n = x.sort
    if m != n
        puts "fail"
    else
        puts "win"
    end
        }



