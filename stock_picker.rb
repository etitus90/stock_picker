def stock_picker(price_array)
    min_price = price_array[0]
    min_day= 0
    profit = 0
    days = [0, 0]

    price_array.each_with_index do |value, day|
        if value < min_price
            min_price = value
            min_day = day
            next
        end
        
        if value - min_price > profit
            profit = value - min_price
            days = [min_day, day]
        end
    end

    days
end

p stock_picker([17,3,6,9,15,8,6,1,10])