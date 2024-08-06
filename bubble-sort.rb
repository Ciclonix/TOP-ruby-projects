def bubble_sort(to_sort)
    max_index = to_sort.length - 1

    loop do
        to_sort.each_index do |i|
            break if i == max_index
            # swaps the current element with the next if the current is bigger
            to_sort[i], to_sort[i+1] = to_sort[i+1], to_sort[i] if to_sort[i] > to_sort[i+1]
        end

        max_index -= 1
        break if max_index == 0
    end

    return to_sort
end


# p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]