puts "Say something to Grandma."
statement = gets.chomp

while statement != "BYE"
    if statement != statement.upcase
        puts "HUH?! SPEAK UP, SONNY!"
        statement = gets.chomp
    else statement == statement.upcase
        puts "NO, NOT SINCE " + (rand(21) + 1930).to_s + "!"
        statement = gets.chomp
    end
end

puts "Okay dear, bye!"
