def merge_sort(arr)
    if arr.length < 2
        return arr 
    end 
    left_arr = arr[0...(arr.length / 2)]
    left = merge_sort(left_arr)
    right_arr = arr.slice((arr.length / 2), arr.length)
    right = merge_sort(right_arr)
    sorted = sort_arr_helper(left, right)
    sorted 
end 


def sort_arr_helper(left, right)
    result = []
    count = [left.length, right.length].min
    left_pointer = 0
    right_pointer = 0
    while !left[left_pointer].nil? && !right[right_pointer].nil?
        if(left[left_pointer] < right[right_pointer])
            result << left[left_pointer]  
            left_pointer += 1    
        else
            result << right[right_pointer] 
            right_pointer += 1
        end 
    end
    remainder_left = left.slice(left_pointer, left.length)
    remainder_right = right.slice(right_pointer, right.length)
    result.concat(remainder_left).concat(remainder_right)
end 

p merge_sort([1, 0, 3, 6, 120, -2])