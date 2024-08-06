def stock_picker(prices_per_day)
    best_times = [0, 0]
    max_rev = 0

    prices_per_day.each_with_index do |v1, i1|
        prices_per_day.each_with_index do |v2, i2|
            if i2 > i1 && (v2-v1) > max_rev
                best_times = [i1, i2]
                max_rev = v2-v1
            end
        end
    end

    return best_times
end


# stock_picker([17,3,6,9,15,8,6,1,10]) 
# => [1,4]  for a profit of $15 - $3 == $12