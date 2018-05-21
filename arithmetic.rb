class Arithmetic

  puts "The sum of 3 and 2 is #{3 + 2}"


  #Boolean true or false thankfully
  puts "Three is greater than two... The answer is #{3 > 2}"

  a = rand(1...6)
  b = rand(1...6)


  puts "#{a} / #{b} equals #{a / b}"

  #Obtaining float numbers from rand
  c = rand(1.0...6.0)
  d = rand(1.0...6.0)

  puts "#{c} / #{d} equals #{c / d}"

  #Rounded to nearest hundrdedth
  puts "#{c} / #{d} equals (rounded to nearest hundredth) #{(c / d).round(2)}"







  
end