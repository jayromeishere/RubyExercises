def fibonacci limit
    n1 = 1
    n2 = 2
    s = 0
    i = 1
    array = [n1, n2]
    next_n = array[0] + array[1] #defines next_n for the 'while' loop
    while next_n < limit
        array << next_n
        if next_n % 2 == 0
            s = s + next_n
        end
        i = i + 1
        next_n = array[i] + array[i - 1]
    end
    puts (s + 2) #the loop only accounts for the elements after array[1] = 2, so 2 must be added since it's even
end

fibonacci 4000000