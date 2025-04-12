def stock_picker(array)
    max_prof = 0
    pair = []
    array.each_with_index do |buy, buy_ind|
        array[buy_ind..].each_with_index do |sell, sell_ind|
            prof = sell - buy
            if prof > max_prof
                pair = [buy_ind, sell_ind + buy_ind]
                max_prof = prof
            end
        end
    end
    pair
end

arr = [17,3,6,9,15,8,6,1,10]
p stock_picker(arr)