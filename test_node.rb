require './node.rb'


TEN = 10


def convert_num_to_linked_list(num)
  numchars_array = num.split('')

  count = numchars_array.length - 1

  start_node = nil
  latest_node = Node.new(0, nil)

  while count >= 0
    add_node = Node.new(numchars_array[count], nil)

    if count == numchars_array.length - 1
      start_node = add_node
      latest_node = start_node
    else
      while latest_node.next_node != nil
        latest_node = latest_node.next_node
      end

      latest_node.next_node = add_node
    end
    count = count - 1
  end

  return start_node
end


def add_two_numbers(l1, l2)

  result_node = Node.new(-1, nil)
  start_node = result_node

  start_l1 = l1
  start_l2 = l2

  li_size = list_size(l1) > list_size(l2) ? list_size(l1) : list_size(l2)

  carry_over = 0

  for pos in (0 ... li_size)

    digit_sum = start_l1.value.to_i + start_l2.value.to_i + carry_over

    if (digit_sum / TEN) >= 1
      carry_over = digit_sum / TEN
      digit_sum = digit_sum % TEN
    else
      carry_over = 0
    end

    if start_node.value < 0
      start_node.value = digit_sum
    else
      new_node = Node.new(digit_sum, nil)
      start_node.next_node = new_node
      start_node = new_node
    end

    start_l1 = start_l1.next_node
    start_l2 = start_l2.next_node

  end


  if carry_over > 0
    carry_over_node = Node.new(carry_over, nil)
    start_node.next_node = carry_over_node
  end

  return result_node

end


def print_list_content(start_node)
  begin_node = start_node

  while begin_node != nil
    print "#{begin_node.value}"
    if begin_node.next_node != nil
      print" -> "
    end

    begin_node = begin_node.next_node
  end
end


def list_size(li)

  begin_node = li
  count = 0

  while begin_node != nil
    count += 1
    begin_node = begin_node.next_node
  end

  return count

end


puts "Input first number"

first_number = gets.chomp


first_number_li = convert_num_to_linked_list(first_number)

puts "Input second number"

second_number = gets.chomp

second_number_li = convert_num_to_linked_list(second_number)


result_li = add_two_numbers(first_number_li, second_number_li)

print_list_content(result_li)




