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


# ? def get_sandwhich(str)
# f
# end

# puts get_sandwhich("breadjambread") # jam
# puts get_sandwhich("ketchup") # ___
# puts get_sandwhich("breadjambreadbutterbreadaa") # jambreadbutter


# ? def shift_left(list)
#    new_shifted list
# end


# print shift_left([6, 2, 5, 3]) # [2, 5, 3, 6]


# ? def can_balance(list)
#     i = 0
#     length = length.size
# end

# puts can_balance([1, 2, 3, 4, 5, 6])
# puts can_balance([1, 2, 3, 4, 5, 6])
# puts can_balance([1, 2, 3, 4, 5, 6])



# def count_code

# end


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


# ? def either_2_4(list1)
#     either2 = 0
#     either4 = 0
#     list

# end

# puts either_2_4()


# def max_span
# end


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

# ? def merge(list_1, list_2)

#     new_list = list_1 + list_2
#     new_list = new_list.sort
#     return new_list
# end

# print merge([1, 2, 8], [4, 9, 10]) # [1, 2, 4, 8, 9, 10]