a = []

puts "Enter a word."
x = gets.chomp
while x != ""
    a.push x
    puts "And another."
    x = gets.chomp
end
    
puts a.sort


