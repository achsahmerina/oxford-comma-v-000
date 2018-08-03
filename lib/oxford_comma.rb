def oxford_comma(array)
    if array.size == 1
      return array.join
    elsif array.size == 2
      return array.join(" and ")
    elsif array.size > 2
      last_name = array.pop
      new_array = array.join(", ")
      new_array = new_array + ", and #{last_name}"
      return new_array
    end
end

#SOLUTION:
def oxford_comma(array)
  if array.length == 2
    return "#{array[0]} and #{array[1]}"
  elsif 2 < array.length
    array[-1].insert(0, "and ")
  end
  array.join(", ")
end
