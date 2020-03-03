def stock_picker(arr)
    best_days = []
    profit = -1
    result = 0

    arr.each_with_index do |buy, index_buy|
        sub_arr = arr[index_buy..-1]
        sub_arr.each_with_index do |sell, index_sell|
            result = sell - buy
            if result > profit
                profit = result
                best_days = []
                best_days.push(index_buy)
                best_days.push(index_sell + index_buy)
            end
        end
    end
    return best_days
end