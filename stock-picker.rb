def stock_picker(arr)
    best_days = [] 
    profit = -1
    result = 0

    #itterate over array arr
    arr.each_with_index do |buy, index_buy|
        #get sub array of array
        sub_arr = arr[index_buy..-1]
        #for each new value of sub array, determine if there
        #is a profit made
        #if so, add the array indexes to best_days
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