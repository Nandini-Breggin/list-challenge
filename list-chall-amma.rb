


def shift_left(list)
    # rotate moves the value
   print list.rotate
end

# shift_left([2, 4, 5]) # 4, 5, 2


def count_code(str)

    count = 0
    (str.size - 3).times do |i|
        slice = str[i.. i + 3] 
        if slice == "coae" || slice == "cobe" || slice == "coce" || slice == "code" || slice == "coee" || slice == "cofe" || slice == "coge" || slice == "cohe" || slice == "coie" || slice == "coje" || slice == "coke" || slice == "cole" || slice == "come" || slice == "cone" || slice == "cooe" || slice == "cope" || slice == "coqe" || slice == "core" || slice == "cose" || slice == "cote" || slice == "coue" || slice == "cove" || slice == "cowe" || slice == "coxe" || slice == "coye" || slice == "coze"
            count += 1
        end
    end
    return count
end

# puts count_code("codecopecade") # 2
# puts count_code("catdogcode") # 1


def merge(a,b)
    
    a.reverse!
    b.reverse!
    result = []
  
      # loop till either a or b is empty
    loop do
      break if a.empty? || b.empty?
      # compare each value in the list to the other list value
      # pop = removes the last element or returns nil
      # the value is pushed to the result
      result << (a.last < b.last ? a.pop : b.pop)
    end
    return result + a.reverse + b.reverse
  end
  
  # print merge([1, 3, 7, 11, 12, 35], [2, 4, 6, 14])

def max_span(list)
    ans = 0
    # Counts the amount in between the first and last item in the list.
    if list.count >= 2
        ans = list.count - 2
    else
        ans = list.count
    end
    print ans
end

puts max_span([4])


def get_sandwich(str)

    count = 0
    (str.size - 2).times do |i|
        slice = str[i.. i + 2] 
        if slice == "cat"
            count += 1
        end
    end
    return count
end