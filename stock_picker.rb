
stock_cost = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_cost)

    day_to_sell = stock_cost
    buy = day_to_sell.reverse_each do |price|
        if price > 12
            day_to_sell = price
            break
        end
    end

    day_to_buy = stock_cost
    sell = day_to_buy.each do |price|
        if price < 5
            day_to_buy = price
            break
        end
    end
    puts "[1,4] #{day_to_buy} #{day_to_sell}, Profit = $12"
end

stock_picker(stock_cost)