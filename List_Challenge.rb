def threed(list)

    count = 0
    list.size.times do |i|
        if list[i] == 3
            count += 1
            if list[i] == list[i + 1]   
                return false
            end
            if list[i] == list[list.size - 1] && count == 3
                return true
            end
        end
    end
    return false
end

# puts threed([1, 2, 3, 4, 3, 3, 4, 3]) # false
# puts threed([1, 2, 3, 4, 3, 5, 3]) # true
# puts threed([1, 2, 3, 4]) # false


def same_first_last(list)

    if list.size - 1 == 0
        return false
    elsif list[list.size - 1] == list[0]
        return true
    else
        return false
    end
end

# puts same_first_last([1, 2, 3, 4, 3, 3, 4, 3]) # false
# puts same_first_last([1, 2, 3, 4, 3, 5, 1]) # true
# puts same_first_last([1, 2, 3, 4, 1]) # true
# puts same_first_last([1]) # false


def can_balance(list)
    i = 0
    list.each do |n|
        left = 0
        right = 0
        i2 = 0
        list.each do |z|
            if i2 <= i
                left += z
            else
                right =+ z
            end
            if left == right
                return true
            end
            i += 1
        end
        return false
    end
end

# puts can_balance([1, 2, 3, 4, 5, 6]) # false


def middle(list)
    if list.size % 2 == 1
        #odd length lists
        return list[list.size / 2]
    else
        # even length lists
        return (list[list.size / 2] + list[list.size / 2 - 1]) / 2.0
    end
end

def middle_way(list1, list2)
    mid1 = [middle(list1)]
    mid2 = [middle(list2)]
    return mid1 + mid2

end

# print middle_way([1, 2, 3], [3, 4, 5]) # 2, 4 = 6


def g_happy(str)
    i = 0
    count = 0
    str.size.times do |letter|
        if str[letter] == "g"
            if str[letter] != str[i + 1]
                if str[letter] != str[i - 1]
                    return false
                end
            end
        else
            count += 1
        end
        i += 1
    end
    if count == str.size
        return false
    else
        return true
    end
end

# puts g_happy("happy") # false
# puts g_happy("agga") # true
# puts g_happy("gaggag") # false


def either_2_4(list)
    index = 0
    count = 0

    list.each do |i|
        if i == 2 && i == list[index +1] || i == 4 && i == list[index +1]
            count +=1

        end
        index = index + 1
    end

    if count == 1
        return true
    end
    return false
end

# puts either_2_4([1, 2, 2, 4, 5]) # true
# puts either_2_4([0, 3, 4]) # false

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
  
# print merge([1, 3, 7, 11, 12, 35], [2, 4, 6, 14]) #[1, 2, 3, 4, 6, 7, 11, 12, 14, 35]

def shift_left(list)
    # rotate moves the value
   print list.rotate
end

# shift_left([2, 4, 5]) # 4, 5, 2



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

# puts max_span([4])


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


# get_sandwhich