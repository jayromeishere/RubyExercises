puts "Enter a starting year."
start_year = gets.chomp
puts "Now enter an ending year."
end_year = gets.chomp

while start_year.to_i <= end_year.to_i
    if start_year.to_f % 400 == 0
        puts start_year
    elsif (start_year.to_f % 100 == 0 && start_year.to_f % 400 != 0)
        puts ""
    elsif start_year.to_f % 4 == 0
        puts start_year
    end
    start_year = start_year.to_i + 1
end