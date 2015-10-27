class OrangeTree
    
    def initialize
        @height = 0
        @oranges = 0
        @age = 0
        puts "You just planted a tree."
    end
    
    def height
        puts @height
    end
    
    def oneYearPasses
        @age = @age + 1
        @height = @height + 0.5
        @oranges = 0
        if @age == 10
            puts "Your tree was mighty, but now no longer -- It's dead."
            exit
        elsif @age < 4
            puts "Your tree grew a year older."
        elsif @age < 7
            @oranges = @oranges + 25
            puts "Your tree is finally bearing fruit.  How delicious!"
        else
            @oranges = @oranges + 75
            puts "Your tree is bearing more fruit than ever before!"
        end
    end
    
    def countTheOranges
        puts @oranges
    end
    
    def pickAnOrange
        if @oranges == 0
            puts "Your tree has no fruit yet."
        else
            @oranges = @oranges - 1
            puts "You pick an orange, and marvel at its sweetness."
        end
    end
    
end

myTree = OrangeTree.new
year_count = 0

while year_count < 11
puts "What do you want to do? You can:"
puts "--Check the tree's HEIGHT"
puts "--Let a year PASS"
puts "--COUNT how many oranges are left"
puts "--PICK an orange from the tree"
answer = gets.chomp.downcase
    if answer == "height"
        myTree.height
    elsif answer == "pass"
        myTree.oneYearPasses
        year_count = year_count + 1
    elsif answer == "count"
        myTree.countTheOranges
    elsif answer == "pick"
        myTree.pickAnOrange
    else
        puts "That's not a valid answer. Enter one that is."
    end
end


