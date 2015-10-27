puts "Say something to Grandma."
statement = gets.chomp
count = 0

if statement == "BYE"
    count = count + 1
    puts "What was that?"
    statement2 = gets.chomp
    if statement2 = "BYE"
        count = count + 1
        puts "What was that again?"
        statement3 = gets.chomp
    else
        
    end
else
    if statement != statement.upcase
        puts "HUH?! SPEAK UP, SONNY!"
        statement = gets.chomp
    else statement == statement.upcase
        puts "NO, NOT SINCE " + (rand(21) + 1930).to_s + "!"
        statement = gets.chomp
    end 
end



