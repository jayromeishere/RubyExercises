def threeOrFive number
    i = 1
    s = 0
    while i < number
        if i % 3 == 0 || i % 5 == 0
            s = s + i
        end
    i = i + 1
    end
    puts s
end

threeOrFive 1000
