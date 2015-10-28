max_price = 500
price_list = Array.new
days = 30
days.times{ price_list << rand(max_price) }

def stock_picker(price_list)
    rerun_count = 0
    puts price_list
    
    highest_price = price_list.max
    lowest_price = price_list.min
    
    best_day_to_buy = price_list.index(lowest_price)
    best_day_to_sell = price_list.index(highest_price)
    
    if best_day_to_buy == price_list.index(-1)
        puts "The stock market isn't in your favor this month."
    elsif best_day_to_buy < best_day_to_sell
        puts "The best day to buy is on day #{best_day_to_buy}, and the best day to sell is on day #{best_day_to_sell}, netting $#{highest_price - lowest_price} in profit."
    else
        profit_window = Array.new
        for i in best_day_to_buy..price_list.length do
            profit_window << price_list[i].to_i #to_i added to make sure interpolations below work
        end
        next_highest_price = profit_window.max.to_i
        next_best_day_to_sell = profit_window.index(next_highest_price)
        puts "The best day to buy is on day #{best_day_to_buy}, and the best day to sell is on day #{next_best_day_to_sell + best_day_to_buy}, netting $#{next_highest_price - lowest_price} in profit." #add best_day_to_buy to next_best_day_to_sell, since index of the profit_window array begins at 0
        puts rerun_count += 1
    end
end

puts stock_picker(price_list)
