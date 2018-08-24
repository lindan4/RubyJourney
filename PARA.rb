class PARA

  first_operand, second_operand, operator = ARGV

  if operator == "+"
    sum = first_operand.to_f + second_operand.to_f
    puts "The sum is #{sum.to_f}"

  elsif operator == "-"
    difference = first_operand.to_f - second_operand.to_f
    puts "The difference is #{difference.to_f}"

  elsif operator == "*"
    product = first_operand.to_f * second_operand.to_f
    puts "The product is #{product.to_f}"
  elsif operator == "/"
    quotient = first_operand.to_f / second_operand.to_f
    puts "The quotient is #{quotient.to_f}"
  else
    puts "The operand is not supported"
  end


end